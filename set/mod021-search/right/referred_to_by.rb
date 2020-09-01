# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+ReferredToBy" cards
#
module ReferredToBy;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/search/set/right/referred_to_by.rb"; end
def raw_help_text
  "Cards that refer to {{_left|name}}."
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/search/set/right/referred_to_by.rb ~~
