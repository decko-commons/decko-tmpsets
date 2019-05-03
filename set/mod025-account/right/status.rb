# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Status" cards
#
module Status;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/account/set/right/status.rb"; end
include All::Permissions::Accounts

def ok_to_update
  if own_account? && !Auth.always_ok?
    deny_because you_cant(tr(:deny_not_change_own_account))
  else
    super
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/account/set/right/status.rb ~~
