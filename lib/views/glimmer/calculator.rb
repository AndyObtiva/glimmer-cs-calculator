require 'easily_typable'

require 'models/glimmer/scientific_calculator/presenter'

module Glimmer
  class ScientificCalculator
    include Glimmer::UI::CustomShell

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
        text "Glimmer - Scientific Calculator"
        grid_layout 4, true
        styled_text(:right) {
          text bind(@presenter, :result)
          font height: 40
          layout_data(:fill, :fill, true, true) {
            horizontal_span 4
          }
          editable false
          caret nil
          on_mouse_up { |event|
            event.widget.selectAll
          }
          on_focus_lost { |event|
            event.widget.setSelection(0, 0)
          }
        }
        button {
          text 'AC'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('AC')
          }
        }
        button {
          text '÷'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('/')
          }
        }
        button {
          text '×'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('*')
          }
        }
        button {
          text '−'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('-')
          }
        }
        button {
          text '7'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('7')
          }
        }
        button {
          text '8'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('8')
          }
        }
        button {
          text '9'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('9')
          }
        }
        button {
          text '+'
          
          layout_data(:fill, :fill, true, true) {          
            vertical_span 2
          }
          
          on_widget_selected {
            @presenter.press('+')
          }
        }
        button {
          text '4'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('4')
          }
        }
        button {
          text '5'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('5')
          }
        }
        button {
          text '6'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('6')
          }
        }
        button {
          text '1'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('1')
          }
        }
        button {
          text '2'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('2')
          }
        }
        button {
          text '3'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('3')
          }
        }
        button {
          text '='
          
          layout_data(:fill, :fill, true, true) {          
            vertical_span 2
          }
          
          on_widget_selected {
            @presenter.press('=')
          }
        }
        button {
          text '0'
          
          layout_data(:fill, :fill, true, true) {          
            horizontal_span 2
          }
          
          on_widget_selected {
            @presenter.press('0')
          }
        }
        button {
          text '.'
          
          layout_data(:fill, :fill, true, true)
          
          on_widget_selected {
            @presenter.press('.')
          }
        }
      }
    }

  end
end
