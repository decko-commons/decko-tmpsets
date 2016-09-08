# -*- encoding : utf-8 -*-
class Card; module Set; class All; module ResetMachines; extend Card::Set
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/machines/set/all/reset_machines.rb ~~
module ClassMethods
  def reset_all_machines
    Auth.as_bot do
      Card.search(
        right: { codename: %w(in machine_cache machine_output) }
      ).each do |card|
        card.update_columns trash: true
        card.expire
      end
    end
  end
end


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/machines/set/all/reset_machines.rb ~~
end;end;end;end;
