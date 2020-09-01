# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Structure"
#
module Structure;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/structure.rb"; end
extend Card::Setting
setting_opts group: :templating, position: 2, rule_type_editable: true,
             short_help_text: "control card's content / structure",
             help_text: "Controls cards' content / structure. "\
                        "[[http://decko.org/formatting|more]]"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/structure.rb ~~
