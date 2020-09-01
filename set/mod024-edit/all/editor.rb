# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Editor)
#
module Editor;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/edit/set/all/editor.rb"; end
include_set Abstract::ProsemirrorEditor
include_set Abstract::TinymceEditor
include_set Abstract::AceEditor

Self::InputOptions.add_to_basket :options, "text area"
Self::InputOptions.add_to_basket :options, "text field"

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def input_type
    voo.input_type.present? ? voo.input_type : input_type_from_rule
  end

  def input_type_from_rule
    card.rule(:input_type)&.gsub(/[\[\]]/, "")&.tr(" ", "_")
  end

  def input_method input_type
    "#{input_type}_input"
  end

  # core view of card is input
  def input_defined_by_card
    with_card input_type do |input_card|
      nest input_card, view: :core
    end
  end

  # move somewhere more accessible?
  def with_card mark
    return nil unless (card = Card[mark])

    yield card
  rescue Card::Error::CodenameNotFound
    nil
  end

  view :input, unknown: true do
    try(input_method(input_type)) ||
      input_defined_by_card ||
      send(input_method(default_input_type))
  end

  def default_input_type
    :rich_text
  end

  # overridden by mods that provide rich text editors
  def rich_text_input
    send "#{Cardio.config.rich_text_editor || :tinymce}_editor_input"
  end

  def text_area_input
    text_area :content, rows: 5, class: "d0-card-content",
                        "data-card-type-code" => card.type_code
  end

  def text_field_input
    text_field :content, class: classy("d0-card-content")
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/edit/set/all/editor.rb ~~
