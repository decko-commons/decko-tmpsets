# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Default" cards
#
module Default;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-content/set/right/default.rb"; end
include_set Abstract::TemplatedNests

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :one_line_content do
    raw = _render_raw
    "#{card.type_name} : #{raw.present? ? raw : '<em>empty</em>'}"
  end

  def quick_form_opts
    super.merge "data-update-foreign-slot":
                ".card-slot.quick_edit-view.RIGHT-Xinput_type,"\
                ".card-slot.quick_edit-view.RIGHT-Xcontent_option"\
                ".card-slot.quick_edit-view.RIGHT-Xcontent_option_view"
  end

  def quick_editor
    wrap_type_formgroup do
      type_field class: "type-field rule-type-field _submit-on-select"
    end +
      wrap_content_formgroup do
        text_field :content, class: "d0-card-content _submit-after-typing"
      end
  end

  def visible_cardtype_groups
    hash = ::Card::Set::Self::Cardtype::GROUP.slice("Text",  "Data", "Upload")
    hash["Organize"] = ["List", "Pointer", "Link list", "Nest list"]
    hash
  end
end

def empty_ok?
  true
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-content/set/right/default.rb ~~
