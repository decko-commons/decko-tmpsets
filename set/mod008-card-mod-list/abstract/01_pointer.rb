# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Pointer)
#
module Pointer;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-list/set/abstract/01_pointer.rb"; end
include_set Abstract::Paging
include_set Abstract::Items

def diff_args
  { diff_format: :pointer }
end

def count
  item_strings.size
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-list/set/abstract/01_pointer.rb ~~
