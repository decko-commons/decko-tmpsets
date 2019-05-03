# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Thanks"
#
module Thanks;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/thanks.rb"; end
extend Card::Setting
setting_opts group: :other, position: 3, rule_type_editable: false,
             help_text: "destination after card is created"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/thanks.rb ~~
