$LOAD_PATH.unshift(File.expand_path('..', __FILE__))

# require 'glimmer-dsl-swt'
class OS
  class << self
    def windows?
    end
    def mac?
    end
    def linux?
    end
  end
end
require 'bigdecimal'
require 'views/glimmer/calculator'
