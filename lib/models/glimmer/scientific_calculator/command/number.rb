module Glimmer
  class ScientificCalculator
    class Command
      class Number < Command
        def execute
          self.result = last_result.nil? || !last_command.is_a?(Number) ? button : last_result + button
          if operation.nil?
            self.number1 = self.result
          else
            self.number2 = self.result
          end
        end
      end
    end
  end
end
