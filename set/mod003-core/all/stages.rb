# -*- encoding : utf-8 -*-
class Card; module Set; class All
module Stages;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/stages.rb"; end
attr_writer :director
delegate :act_manager, to: :director

def director
  @director ||= Card::ActManager.fetch self
end

def identify_action
  @action =
    if trash && trash_changed?
      :delete
    elsif new_card?
      :create
    else
      :update
    end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/stages.rb ~~
