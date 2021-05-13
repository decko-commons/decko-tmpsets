# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Salt" cards
#
module Salt;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-account/set/right/salt.rb"; end
include_set Abstract::AccountField

def generate
  self.content = Digest::SHA1.hexdigest "--#{Time.zone.now}--"
end

def history?
  false
end

view :raw do
  t :account_private_data
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-account/set/right/salt.rb ~~
