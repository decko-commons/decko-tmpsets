# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (RichHtml)
#
module RichHtml;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/format/set/all/rich_html.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  delegate :class_up, :class_down, :with_class_up, :without_upped_class, :classy,
           to: :voo

  view :type, unknown: true do
    link_to_card card.type_card, nil, class: "cardtype"
  end

  view :type_info do
    return unless card.type_code != :basic

    wrap_with :span, class: "type-info float-right" do
      link_to_card card.type_name, nil, class: "navbar-link"
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/format/set/all/rich_html.rb ~~
