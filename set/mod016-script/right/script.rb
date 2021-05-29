# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Script" cards
#
module Script;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/script/set/right/script.rb"; end
def ok_to_read
  true
end

view :javascript_include_tag do
  item_cards.map do |script|
    script.format(:html).render :javascript_include_tag
  end
end

def update_if_source_file_changed
  item_cards.each do |item_card|
    item_card.try(:update_if_source_file_changed)
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def raw_help_text
    "JavaScript (or CoffeeScript) for card's page."
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/script/set/right/script.rb ~~
