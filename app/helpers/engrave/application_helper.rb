module Engrave
  module ApplicationHelper
    def self.markdown_to_html( markdown_text )
      Kramdown::Document.new(markdown_text).to_html.html_safe
    end
  end
end
