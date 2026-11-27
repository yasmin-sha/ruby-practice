module Foo
  def self.extended(base)
    puts "#{base} has been extended with module #{self}"
  end
end
class Bar
  extend Foo
end
