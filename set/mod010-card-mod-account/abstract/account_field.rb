# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (AccountField)
#
module AccountField;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/account/set/abstract/account_field.rb"; end
delegate :accounted, to: :account_card

def account_card
  left
end

# allow account owner to update account field content
def ok_to_update
  return true if own_account? && !name_changed? && !type_id_changed?

  super
end

# force inherit permission on create
# (cannot be done with rule, because sets are not addressable)
def permission_rule_id action
  if action == :create
    left_permission_rule_id action
  else
    super
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/account/set/abstract/account_field.rb ~~
