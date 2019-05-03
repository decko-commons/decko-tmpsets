# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Followers" cards
#
# -*- encoding : utf-8 -*-

module Followers;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/follow/set/right/followers.rb"; end
# X+*followers provides a list of all users following X.

include_set Abstract::Pointer

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core, cache: :never do
    super()
  end
end

def content
  return "" unless left

  item_names.map { |item| "[[#{item}]]" }.join "\n"
end

def item_names _args={}
  return [] unless left
  left.follow_set_card.prototype.follower_names
end

def virtual?
  !real?
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/follow/set/right/followers.rb ~~
