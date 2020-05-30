require 'models/glimmer/calculator/command'

module Glimmer
  class Calculator
    class Presenter
      attr_accessor :result
      
      def initialize
        self.result = '0'
      end
  
      def press(button)
        command = Command.for(button)
        self.result = command.result if command
      end
    end
  end
end
