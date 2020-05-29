module Glimmer
  class ScientificCalculator
    class Command
      class Equals < Command
        keyword '='

        def execute
          self.result = operation.calculate.to_s            
          self.number1 = self.result
        end
      end
    end
  end
end
