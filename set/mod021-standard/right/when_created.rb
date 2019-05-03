# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+WhenCreated" cards
module WhenCreated;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/right/when_created.rb"; end
def content
  return "" unless left&.real?
  I18n.localize left.created_at, format: :card_dayofwk_min_tz
end

# view :core, :raw
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/right/when_created.rb ~~
