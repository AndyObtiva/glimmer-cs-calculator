module Glimmer
  class ScientificCalculator
    class Command
      class Number < Command
        def execute
          @result = last_result.nil? || !last_command.is_a?(Number) ? button : last_result + button
        end
      end
    end
  end
end
