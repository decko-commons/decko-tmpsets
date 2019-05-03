# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards
#! no set module
module Follow;
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/follow/set/all/follow/stop_follow_link.rb"; end

class StopFollowLink < FollowLink
  def initialize format
    @rule_content = "*never"
    @link_text = "following"
    @hover_text = "unfollow"
    @action = "stop sending"
    @css_class = "btn-item-delete"
    super
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/follow/set/all/follow/stop_follow_link.rb ~~
