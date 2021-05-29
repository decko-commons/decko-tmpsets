# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Delete"
#
module Delete;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/permissions/set/self/delete.rb"; end
setting_opts group: :permission, position: 4, rule_type_editable: false,
             short_help_text: "who can delete cards",
             help_text: "Who can delete cards"
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/permissions/set/self/delete.rb ~~
