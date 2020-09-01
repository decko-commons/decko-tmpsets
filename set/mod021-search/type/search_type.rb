# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "SearchType" cards
#
module SearchType;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/search/set/type/search_type.rb"; end
include_set Type::Json
include_set Abstract::WqlSearch

module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :core, cache: :never do
    _render search_result_view
  end

  def chunk_list
    :query
  end

  def search_result_view
    case search_with_params
    when Exception              then :search_error
    when Integer                then :search_count
    when nest_mode == :template then :raw
    else                         :card_list
    end
  end
end

module JsonFormat; parent.send :register_set_format, Card::Format::JsonFormat, self; extend Card::Set::AbstractFormat
  def items_for_export
    return [] if card.content.empty? || unexportable_tag?(card.name.tag_name.key)
    card.item_cards
  end

  # avoid running the search from +:content_options (huge results)
  # and +:structure (errors)
  # TODO: make this configurable in set mods
  def unexportable_tag? tag_key
    %i[content_options structure].map { |code| code.cardname.key }.include? tag_key
  end
end

module RssFormat; parent.send :register_set_format, Card::Format::RssFormat, self; extend Card::Set::AbstractFormat
  view :feed_body do
    case raw_feed_items
    when Exception then @xml.item(render!(:search_error))
    when Integer then @xml.item(render!(:search_count))
    else super()
    end
  end

  def raw_feed_items
    @raw_feed_items ||= search_with_params
  end
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    _render search_result_view
  end

  view :bar do
    voo.hide :one_line_content
    super()
  end

  view :one_line_content, cache: :never do
    if depth > max_depth
      "..."
    else
      search_params[:limit] = closed_limit
      _render_core hide: "paging", items: { view: :link }
      # TODO: if item is queryified to be "name", then that should work.
      # otherwise use link
    end
  end

  def rss_link_tag
    path_opts = { format: :rss }
    Array(search_params[:vars]).compact.each { |k, v| opts["_#{k}"] = v }
    tag "link", rel: "alternate",
                type: "application/rss+xml",
                title: "RSS",
                href: path(path_opts)
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/search/set/type/search_type.rb ~~
