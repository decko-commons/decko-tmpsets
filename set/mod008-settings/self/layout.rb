# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Layout"
#
module Layout;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/settings/set/self/layout.rb"; end
extend Card::Setting
setting_opts group: :webpage, position: 3, rule_type_editable: false,
             help_text: "HTML structure of card's page "\
                        "[[http://decko.org/layouts | more]]"
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/settings/set/self/layout.rb ~~
