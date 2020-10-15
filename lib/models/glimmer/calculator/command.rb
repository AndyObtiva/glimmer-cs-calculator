module Glimmer
  class Calculator
    class Command
      include EasilyTypable
      class << self
        attr_accessor :number1, :number2, :operation
           
        # Keyword string representing calculator command (e.g. '+' for Add command)
        # Subclasses must call to define a single keyword
        def keyword(keyword_text)         
          Command.keyword_to_command_class_mapping[keyword_text] = self
        end
        
        # Keyword string array representing calculator command (e.g. ('0'..'9').to_a)
        # Subclasses must call to define multiple keywords
        def keywords(*keyword_text_array)
          keyword_text_array.flatten.each do |keyword_text|
            keyword(keyword_text)
          end
        end
        
        def keyword_to_command_class_mapping
          @keyword_to_command_class_mapping ||= {}
        end
      
        def command_history
          @command_history ||= []
        end
      
        def for(button)
          command_class = keyword_to_command_class_mapping[button]
          command_class&.new(button)&.tap do |command|
            command.execute
            command_history << command
          end
        end
      end
      
      attr_reader :button
      attr_accessor :result
      
      def initialize(button)
        @button = button
      end
      
      def number1
        Command.number1
      end
      
      def number1=(value)
        Command.number1 = value.to_f
      end
      
      def number2
        Command.number2
      end
      
      def number2=(value)
        Command.number2 = value.to_f
      end
      
      def operation
        Command.operation
      end
      
      def operation=(op)
        Command.operation = op
      end
      
      def last_result
        last_command&.result
      end
      
      def last_command
        command_history.last
      end
      
      def command_history
        Command.command_history
      end
      
      def execute
        raise 'Not implemented! Please override in a subclass.'
      end
    end
  end
end

# Dir[File.join(File.dirname(__FILE__), 'command', '**', '*.rb')].each {|f| require(f)}

require 'models/glimmer/calculator/command/all_clear'
require 'models/glimmer/calculator/command/equals'
require 'models/glimmer/calculator/command/number'
require 'models/glimmer/calculator/command/operation'
require 'models/glimmer/calculator/command/point'
require 'models/glimmer/calculator/command/operation/add'
require 'models/glimmer/calculator/command/operation/divide'
require 'models/glimmer/calculator/command/operation/multiply'
require 'models/glimmer/calculator/command/operation/subtract'
