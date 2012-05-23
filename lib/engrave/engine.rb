require 'friendly_id'
require 'kramdown'
require 'devise'
  
module Engrave
  class Engine < ::Rails::Engine
    isolate_namespace Engrave
  end
end
