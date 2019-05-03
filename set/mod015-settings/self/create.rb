# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module Create;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/create.rb"; end
extend Card::Setting
setting_opts group: :permission, position: 1, rule_type_editable: false,
             help_text: "who can create cards"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/create.rb ~~
