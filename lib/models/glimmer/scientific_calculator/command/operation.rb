module Glimmer
  class ScientificCalculator
    class Command
      class Operation < Command
        # Calculate operation result using number1 and number2 attributes
        def calculate
          raise 'Not implemented! A subclass must implement to calculate operation using number1 and number2 attributes'
        end
      end
    end
  end
end
