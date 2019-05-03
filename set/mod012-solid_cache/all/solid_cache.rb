# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (SolidCache)
#
module SolidCache;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/solid_cache/set/all/solid_cache.rb"; end
def solid_cache?
  respond_to? :solid_cache_card
end

module ClassMethods
  def clear_solid_cache
    Auth.as_bot do
      Card.search(right: { codename: "solid_cache" }).each do |card|
        card.update_columns trash: true
        card.expire
      end
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/solid_cache/set/all/solid_cache.rb ~~
