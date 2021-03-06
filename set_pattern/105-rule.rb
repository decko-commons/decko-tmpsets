# -*- encoding : utf-8 -*-
# Set Pattern: Rule
#
class Card::Set::Rule < Card::Set::Pattern::Base
cattr_accessor :options
class << self
@@options = { junction_only: true }

def label _name
  "All rule cards"
end

def short_label _name
  "all rule cards"
end

def prototype_args _anchor
  { name: "*all+*create" }
end

def pattern_applies? card
  card.rule?
end
            end
            register "Rule".underscore.to_sym, (options || {})
          end

# ~~ generated from /Users/philipp/dev/decko/gem/card/mod/core/set_pattern/06_rule.rb ~~
