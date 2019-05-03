# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards
module EditType;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/edit/set/all/edit_type.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :edit_type, cache: :never, perms: :update do
    frame do
      _render_edit_type_form
    end
  end

  view :edit_type_form, cache: :never, perms: :update, wrap: :slot do
    card_form :update, "data-update-foreign-slot": ".card-slot.edit_content_form-view",
                       "data-update-origin": "true",
                       success: edit_type_success do
      [_render_type_formgroup,
       edit_type_buttons]
    end
  end

  def edit_type_success
    # because the content editor can change with a type change
    # we have to reload the whole edit view
    { view: :edit_type_row }
  end

  def edit_type_buttons
    cancel_path = path view: :edit
    button_formgroup do
      [standard_cancel_button(href: cancel_path)]
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/edit/set/all/edit_type.rb ~~
