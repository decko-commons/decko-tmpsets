# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Input"
#
module Input;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/input.rb"; end
extend Card::Setting
setting_opts group: :editing, position: 3,
             rule_type_editable: false, help_text: "edit interface for pointer cards"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/input.rb ~~
