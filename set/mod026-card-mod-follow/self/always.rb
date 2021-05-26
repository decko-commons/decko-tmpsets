# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Always"
#
module Always;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/follow/set/self/always.rb"; end
include_set Abstract::FollowOption

follow_opts position: 2

follow_test { |_follower_id, _accounted_ids| true }

def title
  "Following"
end

def label
  "follow"
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/follow/set/self/always.rb ~~
