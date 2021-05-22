# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (UpdateReadRules)
#
# FIXME: the following don't really belong here, but they have to come after
module UpdateReadRules;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/permissions/set/all/update_read_rules.rb"; end
# the reference stuff.  we need to organize a bit!

event :update_rule_cache, :finalize, when: :rule? do
  Card::Rule.clear_rule_cache
end

event :expire_related, :finalize do
  reset_patterns
  structuree_names.each { |name| Director.expirees << name } if is_structure?
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/permissions/set/all/update_read_rules.rb ~~
