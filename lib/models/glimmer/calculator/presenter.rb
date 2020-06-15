require 'models/glimmer/calculator/command'

module Glimmer
  class Calculator
    class Presenter
      FORMATTER = {
        nil   => '0',
        'NaN' => 'Not a number'
      }
    
      attr_accessor :result
      
      def initialize
        self.result = '0'
      end
      
      def press(button)
        command = Command.for(button)
        if command
          new_result = command.result
          self.result = FORMATTER[new_result] || new_result
        end
      end
    end
  end
end
