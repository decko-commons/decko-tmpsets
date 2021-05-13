# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Subcards)
#
module Subcards;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/subcards.rb"; end
event :reject_empty_subcards, :prepare_to_validate do
  subcards.each_with_key do |subcard, key|
    next unless subcard.new? && subcard.unfilled?

    remove_subcard(key)
    director.subdirectors.delete(subcard)
  end
end

# check when deleting field that left has not also been deleted
def trashed_left?
  l = left
  !l || l.trash
end

# check when renaming field that it is not actually the same field
# (eg on a renamed trunk)
def same_field?
  (left_id == left_id_before_act) && (right_id == right_id_before_act)
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/subcards.rb ~~
