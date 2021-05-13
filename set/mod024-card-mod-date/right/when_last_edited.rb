# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+WhenLastEdited" cards
#
module WhenLastEdited;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-date/set/right/when_last_edited.rb"; end
def content
  return "" unless left&.real?

  I18n.localize left.updated_at, format: :card_dayofwk_min_tz
end

# view :core, :raw
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-date/set/right/when_last_edited.rb ~~
