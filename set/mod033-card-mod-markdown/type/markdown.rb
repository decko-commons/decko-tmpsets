# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Markdown" cards
#
module Markdown;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-markdown/set/type/markdown.rb"; end
require "kramdown"

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    safe_process_content do |content|
      Kramdown::Document.new(content).to_html
    end
  end

  def input_type
    :ace_editor
  end

  def ace_mode
    :markdown
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-markdown/set/type/markdown.rb ~~
