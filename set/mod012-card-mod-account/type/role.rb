# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Role" cards
#
module Role;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-account/set/type/role.rb"; end
def disabled?
  Auth.current&.fetch(:disabled_roles)&.item_ids&.include? id
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :link_with_checkbox, cache: :never do
    role_checkbox
  end

  def role_checkbox
    name = card.disabled? ? "add_item" : "drop_item"
    subformat(Auth.current.field(:disabled_roles, new: {})).card_form :update do
      [check_box_tag(name, card.id, !card.disabled?, class: "_edit-item"),
       render_link]
    end
  end

  def related_by_content_items
    super.unshift ["members", :members]
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-account/set/type/role.rb ~~
