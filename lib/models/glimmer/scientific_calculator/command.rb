module Glimmer
  class ScientificCalculator
    class Command
      include EasilyTypable
      class << self
        attr_accessor :number1, :number2, :operation
      
        def command_history
          @command_history ||= []
        end
      
        def for(button)
          # TODO key in the following dynamically into a hash by using symbols stored on classes
          command_class = case button
          when "0".."9"
            Command::Number
          when 'AC'
            Command::AllClear
          when '+'
            Command::Operation::Add
          when '='
            Command::Equal
          end
          command_class.new(button).tap do |command|
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

Dir[File.join(File.dirname(__FILE__), 'command', '**', '*.rb')].each {|f| require(f)}
