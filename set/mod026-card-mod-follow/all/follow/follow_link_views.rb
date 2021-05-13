# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Follow;
# Set: All cards (Follow, FollowLinkViews)
#
module FollowLinkViews;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-follow/set/all/follow/follow_link_views.rb"; end
module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def follow_link_class
    card.followed? ? StopFollowLink : StartFollowLink
  end

  def show_follow?
    Auth.signed_in? && !card.new_card? && card.followable?
  end
end

module JsonFormat; module_parent.send :register_set_format, Card::Format::JsonFormat, self; extend Card::Set::AbstractFormat
  view :follow_status do
    follow_link_class.link_opts
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
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
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-follow/set/all/follow/follow_link_views.rb ~~
