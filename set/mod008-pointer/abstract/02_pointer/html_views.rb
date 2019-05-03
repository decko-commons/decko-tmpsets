# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Pointer;
# Set: Abstract (Pointer, HtmlViews)
module HtmlViews;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/02_pointer/html_views.rb"; end
include_set Abstract::BsBadge

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core, cache: :never do
    standard_pointer_core
  end

  view :item_cores, cache: :never do
    card.known_item_cards.map do |item|
      nest item, view: :core
    end.join "\n"
  end

  def standard_pointer_core
    with_paging do |paging_args|
      wrap_with :div, standard_pointer_items(paging_args), class: "pointer-list"
    end
  end

  def standard_pointer_items paging_args
    pointer_items paging_args.extract!(:limit, :offset)
  end

  view :closed_content do
    item_view = implicit_item_view
    item_view = item_view == "name" ? "name" : "link"
    wrap_with :div, class: "pointer-list" do
      # limit to first 10 items to optimize
      pointer_items(view: item_view, limit: 10, offset: 0).join ", "
    end
  end

  def wrap_item rendered, item_view
    %(<div class="pointer-item item-#{item_view}">#{rendered}</div>)
  end

  view :editor do
    _render_hidden_content_field + super()
  end

  def default_editor
    :list
  end

  view :list, cache: :never do
    list_input
  end

  def list_input args={}
    items = items_for_input args[:item_list]
    extra_class = "pointer-list-ul"
    ul_classes = classy "pointer-list-editor", extra_class
    haml :list_input, items: items, ul_classes: ul_classes
  end

  %i[autocomplete checkbox radio select multiselect].each do |editor_view|
    view(editor_view) { send "#{editor_view}_input" }
  end

  def autocomplete_input
    items = items_for_input
    haml :autocomplete_input, item: items.first, options_card: options_card_name
  end

  def checkbox_input
    haml :checkbox_input
  end

  def radio_input
    haml :radio_input
  end

  def select_input
    options = { "-- Select --" => "" }.merge card.options_hash
    select_tag("pointer_select-#{unique_id}",
               options_for_select(options, card.item_name),
               class: "pointer-select form-control")
  end

  def multiselect_input
    select_tag "pointer_multiselect-#{unique_id}",
               options_for_select(card.options_hash, card.item_names),
               multiple: true, class: "pointer-multiselect form-control"
  end

  def add_item_modal_link
    modal_link "Add Item",
               size: :large,
               class: "btn btn-sm btn-primary _add-item-link",
               path: { view: :filter_items_modal,
                       item: implicit_item_view,
                       filter_card: filter_card.name,
                       slot_selector: filtered_list_slot_class,
                       item_selector: "_filtered-list-item",
                       slot: { hide: [:modal_footer] },
                       filter: { not_ids: card.item_ids.map(&:to_s).join(",") } }
  end

  def add_item_overlay_link; end

  private

  # currently only used by :list and :autocomplete. could be generalized?
  def items_for_input items=nil
    items ||= card.item_names context: :raw
    items.empty? ? [""] : items
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/02_pointer/html_views.rb ~~
