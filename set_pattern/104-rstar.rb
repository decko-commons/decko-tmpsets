# -*- encoding : utf-8 -*-
# Set Pattern: Rstar
#
class Card::Set::Rstar < Card::Set::Pattern::Base
cattr_accessor :options
class << self
@@options = { junction_only: true }

def label _name
  'All "+*" cards'
end

def short_label _name
  'all "+*" cards'
end

def prototype_args _anchor
  { name: "*dummy+*dummy" }
end

def pattern_applies? card
  card.name.rstar?
end
            end
            register "Rstar".underscore.to_sym, (options || {})
          end

# ~~ generated from /Users/philipp/dev/decko/gem/card/mod/core/set_pattern/05_rstar.rb ~~
