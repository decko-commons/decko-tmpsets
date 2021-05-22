# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Alias)
#
# triggerable event to auto-add an alias upon renaming a card
module Alias;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/alias/set/all/alias.rb"; end
event :create_alias_upon_rename, :finalize,
      on: :update, changed: :name, trigger: :required do
  add_subcard name_before_act, type_code: :alias, content: name
end

# actual aliases override this in narrower sets.
def alias?
  false
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  # adds checkbox to rename form
  def edit_name_buttons
    output [auto_alias_checkbox, super].compact
  end

  def auto_alias_checkbox
    haml :auto_alias_checkbox if card.simple?
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/alias/set/all/alias.rb ~~
