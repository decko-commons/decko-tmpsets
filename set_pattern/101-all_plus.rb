# -*- encoding : utf-8 -*-
# Set Pattern: AllPlus
#
class Card::Set::AllPlus < Card::Set::Pattern::Base
cattr_accessor :options
class << self
@@options = { junction_only: true }

def label _name
  'All "+" cards'
end

def short_label _name
  'all "+" cards'
end

def prototype_args _anchor
  { name: "+" }
end
            end
            register "AllPlus".underscore.to_sym, (options || {})
          end

# ~~ generated from /Users/philipp/dev/decko/gem/card/mod/core/set_pattern/02_all_plus.rb ~~
