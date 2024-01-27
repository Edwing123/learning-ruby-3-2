
class Request
	attr_reader :method
	attr_reader :path

	def initialize(path, method)
		@path = path
		@method = method
	end
end

class Response
	attr_accessor :status_code
	attr_accessor :status_text
	attr_accessor :body

	def initialize()
		@status_code = 0
		@status_text = ""
		@body = nil
	end
end

class Server
	def initialize()
		@handlers = Hash.new { |hash, key| hash[key] = [] }

		# Handy block to register handlers
		# when creating an instance of the server.
		yield self if block_given?
	end

	def get(path, &handler)
		@handlers[path] << handler
	end

	def handle(request)
		response = Response.new()

		@handlers["*"].each do |handler|
			handler.call(request, response)
		end

		@handlers[request.path].each do |handler|
			handler.call(request, response)
		end

		return response
	end
end

if __FILE__ == $0
	server = Server.new do |server|
		# Logger, for all paths.
		server.get("*") do |request, response|
			puts "#{request.method} at #{request.path}."
		end

		server.get("/") do |_, response|
			response.status_code = 200
			response.status_text = "OK"
			response.body = "Hello, world."
		end
	end

	response = server.handle(
		Request.new("/", "GET")
	)

	p response
end
