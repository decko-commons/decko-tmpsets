# -*- encoding : utf-8 -*-
class Card::Set::Right < Card::Set::Pattern::Abstract
cattr_accessor :options
class << self
@@options = {
  junction_only: true,
  assigns_type: true
}

def label name
  %(All "+#{name}" cards)
end

def short_label name
  %(all "+#{name}s")
end

def prototype_args anchor
  { name: "*dummy+#{anchor}" }
end

def anchor_name card
  card.name.tag
end

              end
              register "Right".underscore.to_sym, (options || {})
            end

# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set_pattern/07_right.rb ~~
