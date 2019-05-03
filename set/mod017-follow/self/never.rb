# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Never"
#
module Never;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/follow/set/self/never.rb"; end
include_set Abstract::FollowOption

follow_opts position: 3

follow_test { |_follower_id, _accounted_ids| false }

def title
  "Ignoring"
end

def label
  "ignore"
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/follow/set/self/never.rb ~~
