class Animal
  def eat
    "eating"
  end
end
cat=Animal.new
dog=Animal.new
def cat.meow
  "meow"
end
p cat.respond_to?(:meow)
p dog.respond_to?(:meow)
