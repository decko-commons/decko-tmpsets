# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Options"
#
module Options;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/options.rb"; end
extend Card::Setting
setting_opts group: :editing, position: 1,
             restricted_to_type: %i[pointer session],
             rule_type_editable: true
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/options.rb ~~
