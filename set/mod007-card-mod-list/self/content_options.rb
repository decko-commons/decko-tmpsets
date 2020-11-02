# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ContentOptions"
#
module ContentOptions;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-list/set/self/content_options.rb"; end
extend Card::Setting
setting_opts group: :editing, position: 5,
             restricted_to_type: %i[list pointer session],
             rule_type_editable: true,
             help_text: "Value options for [[List]] and [[Pointer]] and cards. "\
                        "Can itself be a List or a [[Search]]. "\
                        "[[http://decko.org/Pointer|more]]",
             applies: lambda { |prototype|
                        prototype.rule_card(:input_type).supports_content_options?
                      }
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-list/set/self/content_options.rb ~~
