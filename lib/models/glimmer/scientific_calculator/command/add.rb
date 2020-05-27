module Glimmer
  class ScientificCalculator
    class Command
      class Add < Command
        def execute
          @result = last_result
        end
        
        def operation
          '+'
        end
      end
    end
  end
end
