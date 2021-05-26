# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Update"
#
module Update;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/permissions/set/self/update.rb"; end
setting_opts group: :permission, position: 3, rule_type_editable: false,
             short_help_text: "who can update cards",
             help_text: "Who can update cards"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/permissions/set/self/update.rb ~~
