# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Now"
#
module Now;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/date/set/self/now.rb"; end
def content
  I18n.localize(Time.now, format: :card_dayofwk_min_tz)
end

# view :core, :raw
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/date/set/self/now.rb ~~
