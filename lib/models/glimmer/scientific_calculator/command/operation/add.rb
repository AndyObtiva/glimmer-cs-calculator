module Glimmer
  class ScientificCalculator
    class Command
      class Operation < Command
        class Add < Operation
          def execute
            numbers_to_calculate.push(last_result.to_f)
            self.result = last_result
          end
          
          def calculate
            calculation_result = numbers_to_calculate.reduce(:+)
            calculation_result.to_s.match(/\.0+$/) ? calculation_result.to_i : calculation_result
          end
        end
      end
    end
  end
end
