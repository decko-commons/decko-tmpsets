# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (IdPointer)
#
# store items as ids, not names
module IdPointer;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/pointer/set/abstract/id_pointer.rb"; end

def standardize_item cardish
  if (id = Card.fetch_id cardish)
    "~#{id}"
  else
    Rails.logger.info "no id for '#{cardish}' added to id pointer"
    nil
  end
end

def item_ids args={}
  item_strings(args).map do |item|
    item = standardize_item item unless item.match?(/^~/)
    item.to_s.tr("~", "").to_i
  end.compact
end

def item_names args={}
  item_ids(args).map(&:cardname).compact
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/pointer/set/abstract/id_pointer.rb ~~
