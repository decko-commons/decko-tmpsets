# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Head"
#
module Head;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/settings/set/self/head.rb"; end
extend Card::Setting
setting_opts group: :webpage, position: 1, rule_type_editable: false,
             short_help_text: "head tag content",
             help_text: "head tag content"
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/settings/set/self/head.rb ~~
