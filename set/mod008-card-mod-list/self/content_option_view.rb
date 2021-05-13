# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ContentOptionView"
#
module ContentOptionView;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-list/set/self/content_option_view.rb"; end
setting_opts group: :editing, position: 6,
             restricted_to_type: %i[list pointer session],
             rule_type_editable: false,
             help_text: "Label view for radio button and checkbox items.  "\
                        "[[http://decko.org/Pointer|more]]",
             applies: lambda  { |prototype|
                        prototype.supports_content_options? &&
                          prototype.rule_card(:input_type)&.supports_content_option_view?
                      }
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-list/set/self/content_option_view.rb ~~
