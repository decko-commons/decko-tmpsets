# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Read"
#
module Read;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/read.rb"; end
extend Card::Setting
setting_opts group: :permission, position: 2, rule_type_editable: false,
             short_help_text: "who can view cards",
             help_text: "Who can view cards in the [[set]]."
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/read.rb ~~
