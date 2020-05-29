module Glimmer
  class ScientificCalculator
    class Command
      class Add < Command
        def execute
          numbers_to_calculate.push(last_result)
          @result = last_result
        end
        
        def operation
          '+'
        end
      end
    end
  end
end
