# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "OnCreate"
#
module OnCreate;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-integrate/set/self/on_create.rb"; end
setting_opts group: :event, position: 1, rule_type_editable: false,
             help_text: "Configure events to be executed when card is created"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-integrate/set/self/on_create.rb ~~
