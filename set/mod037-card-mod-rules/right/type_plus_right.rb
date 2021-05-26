# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+TypePlusRight" cards
#
module TypePlusRight;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/rules/set/right/type_plus_right.rb"; end
def related_sets _with_self=false
  [[name, Card::Set::TypePlusRight.label(name.left)],
   ["#{name[1]}+*right", Card::Set::Right.label(name[1])]]
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/rules/set/right/type_plus_right.rb ~~
