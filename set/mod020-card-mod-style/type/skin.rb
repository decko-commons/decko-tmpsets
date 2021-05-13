# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Skin" cards
#
module Skin;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-style/set/type/skin.rb"; end
include_set Abstract::MachineInput
include_set Abstract::SkinBox
include_set Pointer

def machine_input
  # only the item of a skin card contribute input to the machine
  # not the skin card itself
  ""
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-style/set/type/skin.rb ~~
