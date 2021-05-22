# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "OnDelete"
#
module OnDelete;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/integrate/set/self/on_delete.rb"; end
setting_opts group: :event, position: 3, rule_type_editable: false,
             help_text: "Configure events to be executed when card is deleted"
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/integrate/set/self/on_delete.rb ~~
