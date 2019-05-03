# -*- encoding : utf-8 -*-
# Set Pattern: Type
#
class Card::Set::Type < Card::Set::Pattern::Abstract
cattr_accessor :options
class << self
def label name
  %(All "#{name}" cards)
end

def short_label name
  %(all "#{name}s")
end

def prototype_args anchor
  { type: anchor }
end

def pattern_applies? card
  !!card.type_id
end

def anchor_name card
  card.type_name
end

def anchor_id card
  card.type_id
end
              end
              register "Type".underscore.to_sym, (options || {})
            end

# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set_pattern/03_type.rb ~~
