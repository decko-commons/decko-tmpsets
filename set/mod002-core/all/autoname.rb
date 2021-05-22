# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Autoname)
#
module Autoname;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/core/set/all/autoname.rb"; end
event :set_autoname, :prepare_to_store, on: :create, when: :autoname? do
  self.name = autoname rule(:autoname)
  autoname_card = rule_card :autoname
  autoname_card.update_column :db_content, name
  autoname_card.expire
  pull_from_trash!
  Card.write_to_soft_cache self
end

def no_autoname?
  !autoname?
end

def autoname?
  name.blank? &&
    (@autoname_rule.nil? ? (@autoname_rule = rule(:autoname).present?) : @autoname_rule)
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/core/set/all/autoname.rb ~~
