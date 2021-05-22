# -*- encoding : utf-8 -*-
# Set Pattern: Self
#
class Card::Set::Self < Card::Set::Pattern::Base
cattr_accessor :options
class << self
def label name
  %(The card "#{name}")
end

def short_label name
  name
end

def generic_label
  "a single card"
end

def prototype_args anchor
  { name: anchor }
end

def anchor_name card
  card.name
end

def anchor_id card
  card.id
end
              end
              register "Self".underscore.to_sym, (options || {})
            end

# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/core/set_pattern/09_self.rb ~~
