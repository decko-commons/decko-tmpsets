# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Toggle" cards
#
module Toggle;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-format/set/type/toggle.rb"; end
def checked?
  content == "1"
end

view :core do
  case card.content.to_i
  when 1 then tr(:yes)
  when 0 then tr(:no)
  else
    "?"
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :input do
    toggle
  end

  view :labeled_editor do
    toggle + toggle_label
  end

  def toggle
    check_box :content
  end

  def toggle_label
    label :content, card.name.tag
  end

  def one_line_content
    short_content
  end

  def short_content
    render_core
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-format/set/type/toggle.rb ~~
