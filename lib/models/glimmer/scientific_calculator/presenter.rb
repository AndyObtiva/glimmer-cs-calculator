require 'models/glimmer/scientific_calculator/command'

module Glimmer
  class ScientificCalculator
    class Presenter
      attr_accessor :result
      
      def initialize
        self.result = '0'
      end
  
      def press(button)        
        self.result = Command.for(button).result
      end
    end
  end
end
