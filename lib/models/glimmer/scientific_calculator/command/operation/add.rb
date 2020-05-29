module Glimmer
  class ScientificCalculator
    class Command
      class Operation < Command      
        class Add < Operation
          keyword '+'

          def execute
            if number2 && operation
              self.result = operation.calculate.to_s            
              self.number1 = self.result
            else
              self.result = last_result
              self.operation = self
            end
          end
          
          def calculate
            calculation_result = number1 + number2
            calculation_result.to_s.match(/\.0+$/) ? calculation_result.to_i : calculation_result
          end
        end
      end
    end
  end
end
