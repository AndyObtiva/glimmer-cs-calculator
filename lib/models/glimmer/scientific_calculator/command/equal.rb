module Glimmer
  class ScientificCalculator
    class Command
      class Equal < Command
        def execute
          numbers_to_calculate.shift if numbers_to_calculate.size == 2
          numbers_to_calculate.push(last_result.to_f)
          operation = command_history.reverse.detect(&:operation?)
          self.result = operation.calculate.to_s
        end
      end
    end
  end
end
