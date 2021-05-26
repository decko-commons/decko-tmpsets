# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "TableOfContents"
#
module TableOfContents;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/legacy/set/self/table_of_contents.rb"; end
setting_opts group: :other, position: 1, rule_type_editable: false,
             help_text: "Autogenerate [[http://decko.org/table_of_contents|"\
                        "table of contents]] on cards with at least this many headers "\
                        '("0" means never).'
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/legacy/set/self/table_of_contents.rb ~~
