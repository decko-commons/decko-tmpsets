# -*- encoding : utf-8 -*-
class Card; module Set; class AllPlus
# Set: All "+" cards (Alias)
#
module Alias;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/alias/set/all_plus/alias.rb"; end
event :validate_not_alias, :validate, on: :save do
  errors.add t(:alias_cards_no_children) if alias? && type_code != :alias
end

# a compound name is an alias if any part is an alias
def alias?
  name.parts.any? { |p| Card[p]&.alias? }
end

# reconstructs the name to which a compound name is aliased
def target_name
  Card::Name[
    name.parts.map do |p|
      part = Card[p]
      part&.alias? ? part.target_name : p
    end
  ]
end

def target_card
  Card.fetch target_name, new: {}
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/alias/set/all_plus/alias.rb ~~
