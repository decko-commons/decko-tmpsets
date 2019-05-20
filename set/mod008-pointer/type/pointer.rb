# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Pointer" cards
#
module Pointer;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/type/pointer.rb"; end
include_set Abstract::Pointer

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :view_list do
    %i[info_bar bar box closed titled labeled].map do |view|
      voo.items[:view] = view
      wrap_with :p, [content_tag(:h3, "#{view} items"), render_content]
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/type/pointer.rb ~~
