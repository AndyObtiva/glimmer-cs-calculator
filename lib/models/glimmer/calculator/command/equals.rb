module Glimmer
  class Calculator
    class Command
      class Equals < Command
        keywords '=', "\r"

        def execute
          if operation
            self.result = operation.calculate.to_s
            self.number1 = self.result
          else
            self.result = last_result
          end
        end
      end
    end
  end
end
