# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Text)
#
module Text;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/format/set/all/text.rb"; end
module TextFormat; module_parent.send :register_set_format, Card::Format::TextFormat, self; extend Card::Set::AbstractFormat
  view :core do
    HTMLEntities.new.decode strip_tags(super()).to_s
    # need this string method to get out of html_safe mode
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/format/set/all/text.rb ~~
