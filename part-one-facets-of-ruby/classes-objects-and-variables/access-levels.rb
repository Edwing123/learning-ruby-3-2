=begin
  Ruby provides 3 access levels for methods:

  1. public - the default is not access level is specified.
  2. private - methods can only be accessed inside the defining class.
  3. private - methods can only be accessed by the defining class and sub-classes.

  Unsurprisingly, Ruby offers 3 ways to define access modifers.
=end

class AccessControl
  # By default, the access level is public, which means that
  # defined methods (except initialize) are public.
  def get_age()
    return 22
  end

  def get_name()
    return "Edwin"
  end

  # We can set the access level context using one of the methods: public, private, and protected.
  private

  # In this context, all methods defined are private.
  def get_password()
    return "Banana123"
  end

  def get_secret()
    return :this_is_a_secret
  end

  protected

  # In this context, defined methods are protected.
  def get_country()
    return "Nicaragua"
  end

  # The other alternative is passing the name of methods as symbols to the
  # access control methods themselves:

  public # Setting public context.

  def greet(name)
    puts "Hello, #{name}."
  end

  private :greet

  # The third alternative is possible due to the fact that defining
  # a method with `def` is itself an expression that resolves to
  # the name of the method (as a symbol).
  #
  # So we can pass the method definition directly to the access control methods.
  private def say_hello_to_ruth()
    greet("Ruth")
  end
end

