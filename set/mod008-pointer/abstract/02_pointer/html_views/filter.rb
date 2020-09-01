# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Pointer;; module HtmlViews;
# Set: Abstract (Pointer, HtmlViews, Filter)
#
module Filter;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/02_pointer/html_views/filter.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :filtered_list, unknown: true do
    filtered_list_input
  end

  view :filter_items_modal, unknown: true, wrap: :modal do
    render_filter_items
  end

  view :filter_items, unknown: true, wrap: :slot, template: :haml

  def filtered_list_input
    with_nest_mode :normal do
      class_up "card-slot", filtered_list_slot_class
      with_class_up "card-slot", filtered_list_slot_class do
        wrap do
          haml :filtered_list_input
        end
      end
    end
  end

  # NOCACHE because params alter view
  view :add_selected_link, cache: :never, unknown: true do
    link_to "Add Selected",
            path: { filter_card: params[:filter_card] },
            class: "_add-selected slotter _close-modal btn btn-primary disabled",
            data: { "slot-selector": ".#{params[:slot_selector]}",
                    "item-selector": ".#{params[:item_selector]}",
                    remote: true }
  end

  def filtered_list_item item_card
    nest_item item_card do |rendered, item_view|
      wrap_item rendered, item_view
    end
  end

  # for override
  # @return [Card] search card on which filtering is based
  def filter_card
    filter_card_from_params || default_filter_card
  end

  def default_filter_card
    fcard = card.options_rule_card || Card[:all]
    return fcard if fcard.respond_to? :wql_hash

    fcard.fetch :referred_to_by, new: {}
  end

  def filter_card_from_params
    return unless params[:filter_card]
    Card.fetch params[:filter_card], new: {}
  end

  # currently actually used as a class
  # (because we don't have api to override slot's id)
  def filtered_list_slot_class
    @filtered_list_slot_class ||= "filtered-list-#{unique_id}"
  end
end
end;end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/02_pointer/html_views/filter.rb ~~
