# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Style"
#
module Style;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/self/style.rb"; end
extend Card::Setting
setting_opts group: :webpage, position: 4,
             help_text: "Skin (collection of stylesheets) for card's page. "\
                        "[[http://decko.org/skins|more]]"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/self/style.rb ~~
