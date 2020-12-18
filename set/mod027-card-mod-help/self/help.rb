# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Help"
#
module Help;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-help/set/self/help.rb"; end
setting_opts group: :editing, position: 1, rule_type_editable: true,
             short_help_text: "help text people will see when editing",
             help_text: "[[http://decko.org/custom_help_text|Help text]] "\
                        "people will see when editing."
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-help/set/self/help.rb ~~
