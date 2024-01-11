# This is a single line comment in Ruby.

=begin
 This is a "rarely" used multiline comment in Ruby.
 This is actually nice, I'm not really fond of using a "#" for
 each line.

 Surprisingly, Ruby programmers have strong opinions in this, and to be fair,
 I don't bother, and for me it's fine to follow a convention, as long as it's
 consistent.
=end

# There is something called "magic comments", these comments
# tell Ruby to do something. For example:
#
# frozen_string_literal: true
#
# This "magic comment" (technically known as a directive) tells
# Ruby to freeze all literal strings with no interpolations, as if
# the method `.freeze` was called for each string.
#
# Directives have the syntax:
#
# directive: value
#
# And they have to appear in the beginning of the file to take effect:
#
# > These comments have the form of # directive: value and must appear
# > in the file before the first line of actual Ruby code.
