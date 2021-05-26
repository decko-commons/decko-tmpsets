# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Autoname"
#
module Autoname;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/self/autoname.rb"; end
setting_opts group: :templating, position: 4,
             help_text: "Autogenerate name for new cards by incrementing this value. "\
                        "[[http://decko.org/autonaming|more]]"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/self/autoname.rb ~~
