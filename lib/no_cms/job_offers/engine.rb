require 'globalize'
require 'friendly_id'
require "friendly_id/globalize"

module NoCms
  module JobOffers
    class Engine < ::Rails::Engine
      isolate_namespace NoCms::JobOffers
    end
  end
end
