# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Options" cards
module Options;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/right/options.rb"; end
def default_limit
  wql_limit = fetch_query.limit if respond_to?(:fetch_query)
  wql_limit || 50
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/right/options.rb ~~
