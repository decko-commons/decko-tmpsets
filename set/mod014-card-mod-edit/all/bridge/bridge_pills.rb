# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Bridge;
# Set: All cards (Bridge, BridgePills)
#
module BridgePills;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-edit/set/all/bridge/bridge_pills.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  BRIDGE_PILL_UL_CLASSES =
    "nav nav-pills _auto-single-select bridge-pills flex-column".freeze

  BRIDGE_PILL_LI_CLASSES = "nav-item".freeze

  def bridge_pills items
    list_tag class: BRIDGE_PILL_UL_CLASSES, items: { class: BRIDGE_PILL_LI_CLASSES } do
      items
    end
  end

  def bridge_pill_items data, breadcrumb
    data.map do |text, field, extra_opts|
      opts = bridge_pill_item_opts breadcrumb, extra_opts, text
      mark = opts.delete(:mark) == :absolute ? field : [card, field]
      link_to_card mark, text, opts
    end
  end

  def bridge_pill_item_opts breadcrumb, extra_opts, text
    opts = bridge_link_opts.merge("data-toggle": "pill")
    opts.merge! breadcrumb_data(breadcrumb)

    if extra_opts
      classes = extra_opts.delete :class
      add_class opts, classes if classes
      opts.deep_merge! extra_opts
    end
    opts["data-cy"] = "#{text.to_name.key}-pill"
    add_class opts, "nav-link"
    opts
  end

  def bridge_pill_sections tab_name
    wrap_with :ul, class: BRIDGE_PILL_UL_CLASSES do
      yield.map { |args| bridge_pill_section(tab_name, *args) }
    end
  end

  def bridge_pill_section tab_name, title, items
    wrap_with(:h6, title, class: "ml-1 mt-3") +
      wrap_each_with(:li, class: BRIDGE_PILL_LI_CLASSES) do
        bridge_pill_items(items, tab_name)
      end.html_safe
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-edit/set/all/bridge/bridge_pills.rb ~~
