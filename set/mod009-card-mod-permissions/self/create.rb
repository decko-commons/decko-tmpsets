# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Create"
#
module Create;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/permissions/set/self/create.rb"; end
setting_opts group: :permission, position: 1, rule_type_editable: false,
             short_help_text: "who can create cards",
             help_text: "Who can create new cards"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/permissions/set/self/create.rb ~~
