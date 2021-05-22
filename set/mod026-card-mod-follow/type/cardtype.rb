# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Cardtype" cards
#
module Cardtype;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/follow/set/type/cardtype.rb"; end
def follow_label
  follow_set_card.follow_label
end

def followed_by? user_id=nil
  follow_set_card.all_members_followed_by? user_id
end

def follow_set_card
  Card.fetch name, :type
end

def list_direct_followers?
  true
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def related_by_type_items
    super.unshift ["#{card.name} cards", [card, :type, :by_name], { mark: :absolute }]
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/follow/set/type/cardtype.rb ~~
