# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Cardtype" cards
#
module Cardtype;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/rules/set/type/cardtype.rb"; end
def related_sets with_self=false
  sets = []
  sets << ["#{name}+*type", Card::Set::Type.label(name)] if known?
  sets + super
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/rules/set/type/cardtype.rb ~~
