# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Pointer;
# Set: Abstract (Pointer, OtherViews)
#
# BASE views
module OtherViews;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/02_pointer/other_views.rb"; end

module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def default_limit
    20
  end

  def item_links args={}
    card.item_cards(args).map do |item_card|
      subformat(item_card).render_link
    end
  end

  def nest_item_array
    card.item_cards.map do |item|
      nest_item item
    end
  end

  view :core do
    pointer_items.join ", "
  end

  def pointer_items args={}
    page_args = args.extract! :limit, :offset
    listing card.item_cards(page_args), args
  end
end

# JavaScript views

module JsFormat; parent.send :register_set_format, Card::Format::JsFormat, self; extend Card::Set::AbstractFormat
  view :core do
    nest_item_array.join "\n\n"
  end
end

# Data views

module DataFormat; parent.send :register_set_format, Card::Format::DataFormat, self; extend Card::Set::AbstractFormat
  view :core do
    nest_item_array
  end
end

# JSON views

module JsonFormat; parent.send :register_set_format, Card::Format::JsonFormat, self; extend Card::Set::AbstractFormat
  view :content do
    card.item_names
  end

  def item_cards
    card.item_cards
  end

  def max_depth
    params[:max_depth] || 1
  end

  def items_for_export
    card.item_cards
  end

  def essentials
    return {} if depth > max_depth
    card.item_cards.map do |item|
      nest item, view: :essentials
    end
  end

  view :links do
    []
  end
end

# CSS views

module CssFormat; parent.send :register_set_format, Card::Format::CssFormat, self; extend Card::Set::AbstractFormat
  # generalize to all collections?
  def default_item_view
    :content
  end

  view :titled do
    %(#{major_comment "STYLE GROUP: \"#{card.name}\"", '='}#{_render_core})
  end

  view :core do
    nest_item_array.join "\n\n"
  end

  view :content, :core
end

# RSS views

module RssFormat; parent.send :register_set_format, Card::Format::RssFormat, self; extend Card::Set::AbstractFormat
  def raw_feed_items
    @raw_feed_items ||= card.item_cards(limit: limit, offset: offset)
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/02_pointer/other_views.rb ~~
