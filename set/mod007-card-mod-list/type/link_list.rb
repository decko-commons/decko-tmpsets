# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "LinkList" cards
#
module LinkList;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-list/set/type/link_list.rb"; end
include_set Abstract::Pointer

def raw_item_strings content
  reference_chunks(content).map(&:referee_name)
end

def item_titles default_to_name=true
  reference_chunks.map do |chunk|
    chunk.options[:title] || (default_to_name ? chunk.referee_name : nil)
  end
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def chunk_list
    :references
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def input_type
    :link_list
  end

  view :link_list_input, cache: :never do
    link_list_input
  end

  def items_for_input items=nil
    items ||= card.item_names context: :raw
    items.empty? ? [["", ""]] : items.zip(card.item_titles(false))
  end

  def link_list_input args={}
    items = items_for_input args[:item_list]
    extra_class = "pointer-link-list-ul"
    ul_classes = classy "pointer-list-editor", extra_class
    haml :link_list_input, items: items, ul_classes: ul_classes,
                           options_card: options_card_name
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-list/set/type/link_list.rb ~~
