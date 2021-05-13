# -*- encoding : utf-8 -*-
# Set Pattern: All
#
class Card::Set::All < Card::Set::Pattern::Base
cattr_accessor :options
class << self
def label _name
  "All cards"
end

def short_label _name
  "everything"
end

def prototype_args _anchor
  {}
end
              end
              register "All".underscore.to_sym, (options || {})
            end

# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set_pattern/01_all.rb ~~
