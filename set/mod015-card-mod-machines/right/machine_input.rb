# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+MachineInput" cards
#
module MachineInput;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/machines/set/right/machine_input.rb"; end
def followable?
  false
end

def history?
  false
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/machines/set/right/machine_input.rb ~~
