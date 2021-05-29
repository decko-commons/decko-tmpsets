# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Cardtype" cards
#
module Cardtype;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/search/set/type/cardtype.rb"; end
include_set Abstract::CqlSearch

def cql_content
  { type_id: id, sort: :name }
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/search/set/type/cardtype.rb ~~
