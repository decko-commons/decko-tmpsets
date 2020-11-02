# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "User" cards
#
module User;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-follow/set/type/user.rb"; end
def follow follow_name, option="*always"
  return unless (follow_rule = Card.fetch(follow_name)&.follow_rule_card(name, new: {}))

  follow_rule.drop_item "*never"
  follow_rule.add_item option
  follow_rule.save!
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-follow/set/type/user.rb ~~
