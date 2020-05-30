module Glimmer
  class Calculator
    class Command
      class Equals < Command
        keywords '=', "\r"

        def execute
          self.result = operation.calculate.to_s            
          self.number1 = self.result
        end
      end
    end
  end
end
