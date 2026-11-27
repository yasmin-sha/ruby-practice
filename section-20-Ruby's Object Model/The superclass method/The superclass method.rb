class Bar
  def shout
    "i am a bar"
  end
end

class Foo < Bar
end
p Foo.new.shout
p Foo.superclass
