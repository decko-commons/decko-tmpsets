# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Stages; extend Card::Set
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set/all/stages.rb ~~
attr_writer :director
delegate :stage, to: :director

def director
  @director ||= Card::DirectorRegister.fetch self
end

def identify_action
  @action =
    case
    when trash     then :delete
    when new_card? then :create
    else :update
    end
end

def current_act= act
  raise Card::Error, "not allowed to override current act" if Card.current_act
  Card.current_act = act
end

def current_act
  @current_act ||= Card.current_act
end


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set/all/stages.rb ~~
end;end;end;end;
