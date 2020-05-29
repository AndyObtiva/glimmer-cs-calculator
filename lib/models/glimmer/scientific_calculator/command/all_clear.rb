module Glimmer
  class ScientificCalculator
    class Command
      class AllClear < Command
        def execute
          @result = '0'
          numbers_to_calculate.clear
          command_history.clear
        end
      end
    end
  end
end
