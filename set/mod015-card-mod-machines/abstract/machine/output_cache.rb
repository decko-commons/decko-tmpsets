# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Machine;
# Set: Abstract (Machine, OutputCache)
#
module OutputCache;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/machines/set/abstract/machine/output_cache.rb"; end
def fetch_cache_card input_card, new=nil
  new &&= { type_id: PlainTextID }
  Card.fetch input_card.name, name, :machine_cache, new: new
end

def cache_output_part input_card, output
  Auth.as_bot do
    # save virtual cards first
    # otherwise the cache card will save it to get the left_id
    # and trigger the cache update again
    input_card.save! if input_card.new_card?

    cache_card = fetch_cache_card(input_card, true)
    cache_card.update! content: output
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/machines/set/abstract/machine/output_cache.rb ~~
