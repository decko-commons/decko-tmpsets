# -*- encoding : utf-8 -*-
class Card::Set::TypePlusRight < Card::Set::Pattern
  cattr_accessor :options
  class << self
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set_pattern/07_type_plus_right.rb ~~

@@options = {
  junction_only: true,
  assigns_type: true,
  anchor_parts_count: 2
}

def label name
  %(All "+#{name.to_name.tag}" cards on "#{name.to_name.left_name}" cards)
end

def prototype_args anchor
  {
    name: "+#{anchor.tag}",
    supercard: Card.new(name: "*dummy", type: anchor.trunk_name)
  }
end

def anchor_name card
  left = card.left
  type_name = (left && left.type_name) || Card[Card.default_type_id].name
  "#{type_name}+#{card.cardname.tag}"
end

def follow_label name
  %(all "+#{name.to_name.tag}" on "#{name.to_name.left_name}s")
end


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set_pattern/07_type_plus_right.rb ~~
  end
  register "type_plus_right", (options || {})
end

