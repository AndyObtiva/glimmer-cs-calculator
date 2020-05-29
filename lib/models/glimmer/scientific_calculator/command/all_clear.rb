module Glimmer
  class ScientificCalculator
    class Command
      class AllClear < Command
        def execute
          self.result = '0'
          self.number1 = nil
          self.number2 = nil
          self.operation = nil
          command_history.clear
        end
      end
    end
  end
end
