# -*- encoding : utf-8 -*-
class Card; module Set; class Rstar
# Set: All "+*" cards (RuleUser)
#
module RuleUser;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/rules/set/rstar/rule_user.rb"; end
def rule_user_name
  preference? ? name.trunk_name.tag : nil
end

def rule_user
  preference? ? self[-2] : nil
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/rules/set/rstar/rule_user.rb ~~
