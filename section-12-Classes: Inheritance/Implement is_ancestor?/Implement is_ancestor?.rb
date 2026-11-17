  def is_ancestor?(ancestor, klass)
    klass.ancestors.include?(ancestor)
  end
  
  puts is_ancestor?(Numeric, Float)
  puts is_ancestor?(Object, String)
  puts is_ancestor?(Float, Numeric)
  puts is_ancestor?(String, Object)
