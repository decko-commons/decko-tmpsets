# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Mates" cards
#
module Mates;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/search/set/right/mates.rb"; end
def raw_helo_text
  "If there is a card named \"X+{{_left|name}}\", then X is a mate of {{_left|name}}."
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/search/set/right/mates.rb ~~
