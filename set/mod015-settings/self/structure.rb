# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Structure"
module Structure;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/structure.rb"; end
extend Card::Setting
setting_opts group: :templating, position: 2, rule_type_editable: true,
             help_text: "control card's content / structure"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/structure.rb ~~
