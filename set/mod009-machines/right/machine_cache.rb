# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+MachineCache" cards
#
module MachineCache;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/machines/set/right/machine_cache.rb"; end
include_set Abstract::VirtualCache

def clean_html?
  false
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/machines/set/right/machine_cache.rb ~~
