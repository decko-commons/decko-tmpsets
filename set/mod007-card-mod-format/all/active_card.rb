# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (ActiveCard)
#
# FIXME: -this needs a better home!
module ActiveCard;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-format/set/all/active_card.rb"; end
def format opts={}
  opts = { format: opts.to_sym } if [Symbol, String].member? opts.class
  Card::Format.new self, opts
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-format/set/all/active_card.rb ~~
