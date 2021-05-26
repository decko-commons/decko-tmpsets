# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+MachineOutput" cards
#
module MachineOutput;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/machines/set/right/machine_output.rb"; end
def followable?
  false
end

def ok_to_read
  left.ok_to_read
end

def history?
  false
end

event :remove_codename, :prepare_to_validate,
      on: :delete,
      when: proc { |c| c.codename.present? } do
  # load file before deleting codename otherwise it will fail later
  attachment
  self.codename = nil
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :not_found do
    if update_machine_output_live?
      Card::Cache.reset_all # FIXME: wow, this is overkill, no?
      root.error_status = 302
      card.left.update_machine_output
      card_path card.left.machine_output_url
    else
      super()
    end
  end

  def update_machine_output_live?
    case
    when !card.left.is_a?(Abstract::Machine) then false # must be a machine
    when card.left.locked?         then false # machine must not be running
    when card.new_card?            then true  # always update if new
    else
      # must want current output (won't re-output old stuff)
      (selected_id = card.selected_action_id) &&
        selected_id == card.last_action_id
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/machines/set/right/machine_output.rb ~~
