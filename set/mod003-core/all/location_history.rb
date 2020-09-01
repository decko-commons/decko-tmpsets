# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (LocationHistory)
#
module LocationHistory;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/location_history.rb"; end
event :discard_deleted_locations, in: :finalize, on: :delete do
  Env.discard_locations_for self
  configure_successful_deletion if success.target == self
end

event :save_current_location, before: :show_page, on: :read do
  Env.save_location self
end

# TO DISCUSS: should this default behavior be directly in the controller?
# Or at least in decko?
def configure_successful_deletion
  if Env.ajax?
    success.card = self
    success.view = :unknown unless success.view
  else
    success.target = :previous
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/location_history.rb ~~
