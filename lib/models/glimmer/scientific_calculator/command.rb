module Glimmer
  class ScientificCalculator
    class Command
      include EasilyTypable
      class << self
        def numbers_to_calculate
          @numbers_to_calculate ||= []
        end
      
        def command_history
          @command_history ||= []
        end
      
        def for(button)
          command_class = case button
          when "0".."9"
            Command::Number
          when 'AC'
            Command::AllClear
          when '+'
            Command::Add
          when '='
            Command::Equal
          end
          command_class.new(button).tap do |command|
            command.execute
            command_history << command
          end
        end
      end
      
      attr_reader :button, :result
      
      def initialize(button)
        @button = button
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
      
      def numbers_to_calculate
        Command.numbers_to_calculate
      end
    
      def execute
        raise 'Not implemented! Please override in a subclass.'
      end
    end
  end
end

Dir[File.join(File.dirname(__FILE__), 'command', '*.rb')].each {|f| require(f)}
