# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Children" cards
#
module Children;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-search/set/right/children.rb"; end
def raw_help_text
  "Cards formed by \"mating\" {{_left|name}} with another card. "\
  "eg: \"{{_left|name}}+mate\"."
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-search/set/right/children.rb ~~
