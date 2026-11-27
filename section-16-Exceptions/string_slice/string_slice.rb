def string_slice(*string)
  if string.length>5
    raise ArgumentError, "maximum five string are allowed"
  end
  string.map do|str|
    if str.length < 3
      raise  IndexError, "stringmust contain at least three characters"
    end
    str[0,3]
  end
end
puts string_slice("Ruby", "Rails", "Python").inspect
