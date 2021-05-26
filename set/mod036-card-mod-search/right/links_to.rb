# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+LinksTo" cards
#
# -*- encoding : utf-8 -*-
module LinksTo;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/search/set/right/links_to.rb"; end

def raw_help_text
  "Cards that <em>{{_left|name}}</em> links to."
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/search/set/right/links_to.rb ~~
