# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "TableOfContents"
#
module TableOfContents;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/settings/set/self/table_of_contents.rb"; end
extend Card::Setting
setting_opts group: :other, position: 1, rule_type_editable: false,
             help_text: "Autogenerate [[http://decko.org/table_of_contents|"\
                        "table of contents]] on cards with at least this many headers "\
                        '("0" means never).'
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/settings/set/self/table_of_contents.rb ~~
