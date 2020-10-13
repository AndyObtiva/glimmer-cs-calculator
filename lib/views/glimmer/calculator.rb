require 'easily_typable'

require 'models/glimmer/calculator/presenter'

module Glimmer
  class Calculator
    include Glimmer::UI::CustomShell

    APP_ROOT = File.expand_path('../../../..', __FILE__)
    VERSION = File.read(File.expand_path(File.join('..', '..', '..', '..', 'VERSION'), __FILE__))
    LICENSE = File.read(File.expand_path(File.join('..', '..', '..', '..', 'LICENSE.txt'), __FILE__))

    ## Add options like the following to configure CustomShell by outside consumers
    #
    # options :title, :background_color
    # option :width, 320
    # option :height, 240

    ## Uncomment before_body block to pre-initialize variables to use in body
    #
    #
    before_body {
      @presenter = Presenter.new
      @button_font = {height: 14}
      @button_font_operation = {height: 18}
      @button_font_big = {height: 28}
      Display.setAppName('Glimmer Calculator')
      @display = display {
        on_about {
          display_about_dialog
        }
        on_preferences {
          # No need for preferences. Just display about dialog.
          display_about_dialog
        }
        on_swt_keydown { |key_event|
          char = key_event.character.chr rescue nil
          @presenter.press(char)
        }
      }
    }

    ## Uncomment after_body block to setup observers for widgets in body
    #
    # after_body {
    # 
    # }

    ## Add widget content inside custom shell body
    ## Top-most widget must be a shell or another custom shell
    #
    body {
      shell {
        minimum_size (OS.windows? ? 390 : 320), 240
        image File.join(APP_ROOT, 'package', 'windows', "Glimmer Calculator.ico") if OS.windows?
        text "Glimmer - Calculator"
        grid_layout 4, true
        # Setting styled_text to multi in order for alignment options to activate
        styled_text(:multi, :wrap, :border) {
          text bind(@presenter, :result)
          alignment swt(:right)
          right_margin 5
          font height: 40
          layout_data(:fill, :fill, true, true) {
            horizontal_span 4
          }
          editable false
          caret nil
        }
        command_button('AC')
        operation_button('÷')
        operation_button('×')
        operation_button('−')
        (7..9).each { |number|
          number_button(number)
        }
        operation_button('+', font: @button_font_big, vertical_span: 2)
        (4..6).each { |number|
          number_button(number)
        }        
        (1..3).each { |number|
          number_button(number)
        }        
        command_button('=', font: @button_font_big, vertical_span: 2)
        number_button(0, horizontal_span: 2)
        operation_button('.')
      }
    }
    
    def number_button(number, options = {})
      command_button(number, options)
    end
    
    def operation_button(operation, options = {})
      command_button(operation, options.merge(font: @button_font_operation))
    end
    
    def command_button(command, options = {})
      command = command.to_s
      options[:font] ||= @button_font
      options[:horizontal_span] ||= 1
      options[:vertical_span] ||= 1
      
      button { |proxy|
        text command
        font options[:font]
        
        layout_data(:fill, :fill, true, true) {
          horizontal_span options[:horizontal_span]
          vertical_span options[:vertical_span]
        }
        
        on_widget_selected {
          @presenter.press(command)
        }
      }    
    end

    def display_about_dialog
      message_box(body_root) {
        text 'About'
        message "Glimmer - Calculator #{VERSION}\n#{LICENSE}"
      }.open
    end

  end
end
