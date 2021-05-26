# -*- encoding : utf-8 -*-
# Set Pattern: Type
#
class Card::Set::Type < Card::Set::Pattern::Base
cattr_accessor :options
class << self
load "card/set/type.rb" # "load" not "require" so pattern reloads properly

def label name
  %(All "#{name}" cards)
end

def short_label name
  %(all "#{name}s")
end

def generic_label
  "cards of a given type"
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
