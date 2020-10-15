require 'glimmer-dsl-opal'

Document.ready? do
  require 'glimmer-cs-calculator'
  include Glimmer  
  calculator.open  
end
