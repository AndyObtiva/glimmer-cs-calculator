module Glimmer
  class Calculator
    class Command
      class Operation < Command      
        class Divide < Operation
          keywords '÷', '/'
          
          def operation_method
            :/
          end
        end
      end
    end
  end
end
