# -*- encoding : utf-8 -*-
class Card; module Set; class Right
module Salt;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/account/set/right/salt.rb"; end
include All::Permissions::Accounts

def history?
  false
end

view :raw do
  tr :private_data
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/account/set/right/salt.rb ~~
