module Somewhere
  class Hidden
    $everywhere="global"
  end
end
module Somewhere
  class Closeto
    def heart
      $everywhere
    end
  end
end
puts Somewhere::Closeto.new.heart
