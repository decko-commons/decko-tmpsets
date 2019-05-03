# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
module SkinBox;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/machines/set/abstract/skin_box.rb"; end
format :html do
  view :box do
    class_up "box-middle", "p-0"
    voo.hide :customize_button, :box_middle
    super()
  end

  view :box_bottom, template: :haml

  view :customize_button, cache: :never do
    customize_button
  end

  def customize_button target: parent&.card, text: "Apply and customize"
    return "" unless card.codename.present?
    theme = card.codename.match(/^(?<theme_name>.+)_skin$/).capture(:theme_name)
    link_to_card target, text,
                 path: { action: :update, card: { content: "[[#{card.name}]]" },
                         customize: true, theme: theme },
                 class: "btn btn-sm btn-outline-primary mr-2"
  end

  view :box_middle do
    return unless card.field(:image)
    field_nest(:image, view: :full_width, size: :large)
  end

  def select_button target=parent.card
    link_to_card target, "Apply",
                 path: { action: :update, card: { content: "[[#{card.name}]]" } },
                 class: "btn btn-sm btn-primary"
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/machines/set/abstract/skin_box.rb ~~
