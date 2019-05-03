# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Help"
module Help;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/help.rb"; end
extend Card::Setting
setting_opts group: :editing, position: 1, rule_type_editable: true,
             help_text: "help text people will see when editing"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/help.rb ~~
