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
    # before_body {
    # 
    # }

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
        grid_layout 2, true
        styled_text(:none) {
          text ""
          font height: 40
          layout_data(:fill, :fill, true, true) {
            horizontal_span 2
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
      }
    }

  end
end
