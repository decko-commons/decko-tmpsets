# -*- encoding : utf-8 -*-
# Set Pattern: Star
#
class Card::Set::Star < Card::Set::Pattern::Base
cattr_accessor :options
class << self
def label _name
  'All "*" cards'
end

def short_label _name
  'all "*" cards'
end

def prototype_args _anchor
  { name: "*dummy" }
end

def pattern_applies? card
  card.name.star?
end
              end
              register "Star".underscore.to_sym, (options || {})
            end

# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set_pattern/04_star.rb ~~
