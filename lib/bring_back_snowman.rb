# encoding: UTF-8

require "bring_back_snowman/version"

module BringBackSnowman
  class Railtie < Rails::Railtie
   config.snowman = {}

   config.after_initialize do |app|
     app.config.snowman = {:_snowman => "☃"} if app.config.snowman == {}
   end
  end
end

module ActionView
  module Helpers
    module FormTagHelper
      def utf8_enforcer_tag
        key = Rails.configuration.snowman.keys.first
        value = Rails.configuration.snowman.values.first.unpack("U").first
        tag(:input,
            :type => "hidden",
            :name => key,
            :value => "&##{value}".html_safe)
      end
    end
  end
end
