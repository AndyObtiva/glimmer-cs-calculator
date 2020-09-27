require 'easily_typable'

require 'models/glimmer/calculator/presenter'

module Glimmer
  class Calculator
    include Glimmer::UI::CustomShell

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
        # Replace example content below with custom shell content
        minimum_size 320, 240
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
        button {
          text 'AC'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('AC')
          }
        }
        button {
          text '÷'
          font @button_font_operation
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('/')
          }
        }
        button {
          text '×'
          font @button_font_operation
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('*')
          }
        }
        button {
          text '−'
          font @button_font_operation
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('-')
          }
        }
        button {
          text '7'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('7')
          }
        }
        button {
          text '8'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('8')
          }
        }
        button {
          text '9'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('9')
          }
        }
        button {
          text '+'
          font @button_font_big
          
          layout_data(:fill, :fill, true, true) {          
            vertical_span 2
          }
          
          on_widget_selected {
            @presenter.press('+')
          }
        }
        button {
          text '4'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('4')
          }
        }
        button {
          text '5'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('5')
          }
        }
        button {
          text '6'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('6')
          }
        }
        button {
          text '1'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('1')
          }
        }
        button {
          text '2'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('2')
          }
        }
        button {
          text '3'
          font @button_font
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('3')
          }
        }
        button {
          text '='
          font @button_font_big
          
          layout_data(:fill, :fill, true, true) {          
            vertical_span 2
          }
          
          on_widget_selected {
            @presenter.press('=')
          }
        }
        button {
          text '0'
          font @button_font
          
          layout_data(:fill, :fill, true, true) {          
            horizontal_span 2
          }
          
          on_widget_selected {
            @presenter.press('0')
          }
        }
        button {
          text '.'
          font @button_font_operation
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('.')
          }
        }
      }
    }

    def display_about_dialog
      message_box(body_root) {
        text 'About'
        message "Glimmer - Calculator #{VERSION}\n#{LICENSE}"
      }.open
    end

  end
end
