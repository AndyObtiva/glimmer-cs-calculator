module Glimmer
  class ScientificCalculator
    class Command
      class Equal < Command
        def execute
          numbers_to_calculate.push(last_result)
          operation = command_history.detect(&:add?).operation
          @result = eval(numbers_to_calculate.join(operation)).to_s
        end
      end
    end
  end
end
