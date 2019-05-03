# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Pointer)
#
module Pointer;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/02_pointer.rb"; end
include_set Abstract::Paging

def diff_args
  { diff_format: :pointer }
end

def count
  all_raw_item_strings.size
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/02_pointer.rb ~~
