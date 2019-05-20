# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Default" cards
#
module Default;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/right/default.rb"; end
include_set Abstract::TemplatedNests

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :closed_content do
    raw = _render_raw
    "#{card.type_name} : #{raw.present? ? raw : '<em>empty</em>'}"
  end

  def quick_editor
    wrap_type_formgroup do
      type_field class: "type-field rule-type-field _submit-on-select"
    end
  end
end

def empty_ok?
  true
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/right/default.rb ~~
