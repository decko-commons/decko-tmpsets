# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Html" cards
#
module Html;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-format/set/type/html.rb"; end
def clean_html?
  false
end

def diff_args
  { diff_format: :raw }
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :one_line_content do
    raw_one_line_content
  end

  def chunk_list
    :references
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def input_type
    :ace_editor
  end

  view :one_line_content, wrap: {} do
    raw_one_line_content
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-format/set/type/html.rb ~~
