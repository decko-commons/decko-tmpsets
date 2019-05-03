# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+FollowFields" cards
#
module FollowFields;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/follow/set/right/follow_fields.rb"; end
event :follow_fields_changed, :integrate do
  Card.follow_caches_expired
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/follow/set/right/follow_fields.rb ~~
