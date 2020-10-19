# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Pointer;
# Set: Abstract (Pointer, HtmlViews)
#
module HtmlViews;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/navbar/set/abstract/pointer/html_views.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :nav_item do
    nav_dropdown
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/navbar/set/abstract/pointer/html_views.rb ~~
