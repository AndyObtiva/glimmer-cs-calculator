module Glimmer
  class ScientificCalculator
    class Command
      class Equal < Command
        def execute
          numbers = command_history.select(&:number?).map(&:result)
          operation = command_history.detect(&:add?).operation
          @result = eval(numbers.join(operation)).to_s
        end
      end
    end
  end
end
