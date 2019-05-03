# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (ResetMachines)
#
module ResetMachines;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/machines/set/all/reset_machines.rb"; end
module ClassMethods
  def reset_script_machine
    Auth.as_bot do
      card = Card[:all, :script, :machine_output]
      if card
        card.update_columns trash: true
        card.expire
        Card::Virtual.where(right_id: MachineCacheID).delete_all
      end
    end
  end

  def reset_all_machines
    Auth.as_bot do
      Card.search(right: { codename: "machine_output" }).each do |card|
        card.update_columns trash: true
        card.expire
      end
      Card::Virtual.where(right_id: MachineCacheID).delete_all
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/machines/set/all/reset_machines.rb ~~
