# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Follow;
module FollowLinkViews;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/follow/set/all/follow/follow_link_views.rb"; end
format do
  def follow_link_class
    card.followed? ? StopFollowLink : StartFollowLink
  end

  def show_follow?
    Auth.signed_in? && !card.new_card? && card.followable?
  end
end

format :json do
  view :follow_status do
    follow_link_class.link_opts
  end
end

format :html do
  def follow_button
    follow_link_class.new(self).button
  end

  def follow_modal_link
    follow_link_class.new(self).modal_link
  end

  view :follow_button, cache: :never do
    follow_button
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/follow/set/all/follow/follow_link_views.rb ~~
