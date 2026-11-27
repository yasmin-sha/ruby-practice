a=[1,2,3,4,5]

b=a.clone
b<< 6
p a
p b

class Object
  def frozen_clone
    clone.freeze
  end
  num=[1,2,3,4,5]
  new_num=num.frozen_clone
  p num
  p new_num

    p num.frozen?
  p new_num.frozen?
end
