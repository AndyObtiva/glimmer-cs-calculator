module Glimmer
  class Calculator
    class Command
      class Point < Command
        keyword '.'

        def execute          
          self.result = last_result.nil? || !last_command.number? ? '0.' : "#{last_result}."
          if operation.nil? || last_command.equals?
            self.number1 = self.result
            self.number2 = nil
            self.operation = nil            
          else
            self.number2 = self.result
          end
        end
      end
    end
  end
end
