# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Bootstrap;
module Wrapper;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/bootstrap/set/all/bootstrap/wrapper.rb"; end
format :html do
  def frame
    class_up "d0-card-header" , "card-header"
    class_up "d0-card-body", "card-body card-text"
    super
  end

  def standard_frame slot=true
    if panel_state
      class_up "d0-card-frame", "card bg-#{panel_state} text-white"
    else
      class_up "d0-card-frame", "card"
    end
    super
  end

  def panel_state
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/bootstrap/set/all/bootstrap/wrapper.rb ~~
