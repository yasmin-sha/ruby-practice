class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def display_info
    puts "#{@title} by #{@author}"
  end
end

class BookCollection
  def initialize
    @books = []
  end

  # Add using <<
  def <<(book)
    @books << book
    puts "#{book.title} added"
    self
  end

  # Retrieve using []
  def [](index)
    @books[index]
  end

  def display_all
    puts "----------------------"
    @books.each { |b| b.display_info }
  end
end

# Use it
b1 = Book.new("Atomic Habits", "James Clear")
b2 = Book.new("Rich Dad Poor Dad", "Robert Kiyosaki")

library = BookCollection.new
library << b1
library << b2
library.display_all

puts "First book:"
library[0].display_info
