require "bring_back_snowman/version"

module ActionView
  module Helpers
    module FormTagHelper
      def utf8_enforcer_tag
        tag(:input, :type => "hidden", :name => "_snowman", :value => "&#9731".html_safe)
      end
    end
  end
end
