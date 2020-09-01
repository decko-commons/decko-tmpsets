# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Phases)
#
module Phases;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/phases.rb"; end
def prepare_for_phases
  reset_patterns
  include_set_modules
end

def only_storage_phase?
  only_storage_phase || !director.main?
end

delegate :validation_phase, to: :director
delegate :storage_phase, to: :director
delegate :integration_phase, to: :director
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/phases.rb ~~
