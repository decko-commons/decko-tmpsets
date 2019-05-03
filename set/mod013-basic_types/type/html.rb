# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Html" cards
#
module Html;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/basic_types/set/type/html.rb"; end
def clean_html?
  false
end

def diff_args
  { diff_format: :raw }
end

module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :closed_content do
    ""
  end

  def chunk_list
    :references
  end
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def editor
    :ace_editor
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/basic_types/set/type/html.rb ~~
