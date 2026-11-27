module Gym
  class Trainer
    def work
      "gym trainer: let's lift weights"
    end
  end
end
module Dojo
   class Trainer
    def work
      "dojo trainer: let's practice"
    end
  end
end
g=Gym::Trainer.new
puts g.work
d=Dojo::Trainer.new
puts d.work
