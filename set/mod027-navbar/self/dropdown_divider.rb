# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "DropdownDivider"
#
module DropdownDivider;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/navbar/set/self/dropdown_divider.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :nav_item do
    wrap_with :div, "", class: "dropdown-divider"
  end

  view :nav_link_in_dropdown do
    wrap_with :div, "", class: "dropdown-divider"
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/navbar/set/self/dropdown_divider.rb ~~
