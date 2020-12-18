# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Phrase" cards
#
module Phrase;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-format/set/type/phrase.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def input_type
    :text_field
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-format/set/type/phrase.rb ~~
