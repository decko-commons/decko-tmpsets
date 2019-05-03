# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Actify)
#
module Actify;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/actify.rb"; end
def act &block
  @action ||= identify_action
  if ActManager.act_card
    add_to_act &block
  else
    start_new_act &block
  end
end

def start_new_act
  self.director = nil
  ActManager.run_act(self) do
    run_callbacks(:act) { yield }
  end
end

def add_to_act
  # if only_storage_phase is true then the card is already part of the act
  return yield if ActManager.act_card == self || only_storage_phase
  director.reset_stage
  director.update_card self
  self.only_storage_phase = true
  yield
end

module ClassMethods
  def create! opts
    card = Card.new opts
    card.act do
      card.save!
    end
    card
  end

  def create opts
    card = Card.new opts
    card.act do
      card.save
    end
    card
  end
end

def save!(*)
  act { super }
end

def save(*)
  act { super }
end

def valid?(*)
  act { super }
end

def update *args
  act { super }
end

def update! *args
  act { super }
end

alias_method :update_attributes, :update
alias_method :update_attributes!, :update!
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/actify.rb ~~
