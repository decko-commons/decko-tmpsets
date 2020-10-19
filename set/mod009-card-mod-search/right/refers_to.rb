# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+RefersTo" cards
#
module RefersTo;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-search/set/right/refers_to.rb"; end
def raw_help_text
  "Cards that {{_left|name}} refers to."
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-search/set/right/refers_to.rb ~~
