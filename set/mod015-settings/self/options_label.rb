# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "OptionsLabel"
#
module OptionsLabel;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/options_label.rb"; end
extend Card::Setting
setting_opts group: :editing, position: 2,
             restricted_to_type: %i[pointer session],
             rule_type_editable: false
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/options_label.rb ~~
