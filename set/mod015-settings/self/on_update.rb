# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "OnUpdate"
#
module OnUpdate;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/on_update.rb"; end
extend Card::Setting
setting_opts group: :event, position: 2, rule_type_editable: false,
             help_text: "Configure events to be executed when card is updated"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/on_update.rb ~~
