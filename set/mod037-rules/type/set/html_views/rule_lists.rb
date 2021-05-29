# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module Set;; module HtmlViews;
# Set: All "Set+HtmlViews" cards (HtmlViews, RuleLists)
#
module RuleLists;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/rules/set/type/set/html_views/rule_lists.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :quick_edit_rule_list, cache: :never, wrap: { slot: { class: "rule-list" } } do
    quick_edit_rule_list setting_list_from_params(:field_related)
  end

  view :bar_rule_list, cache: :never, wrap: { slot: { class: "rule-list" } } do
    bar_rule_list setting_list_from_params
  end

  view :pill_rule_list, cache: :never, wrap: { slot: { class: "rule-list" } } do
    pill_rule_list setting_list_from_params
  end

  def quick_edit_rule_list settings
    list_tag class: "nav nav-pills flex-column bridge-pills" do
      settings.map { |setting| rule_list_item setting, :quick_edit }
    end
  end

  def pill_rule_list settings
    list_items =
      settings.map { |setting| rule_list_item setting, :rule_bridge_link }
    bridge_pills list_items
  end

  def bar_rule_list settings
    list_items =
      settings.map { |setting| rule_list_item setting, :bar, hide: :full_name }
    list_items.join("\n").html_safe
  end

  def rule_list_item setting, view, opts={}
    return "" unless show_view? setting

    rule_card = card.fetch setting, new: {}
    nest(rule_card, opts.merge(view: view)).html_safe
  end

  def setting_list_from_params default=:common
    setting_list setting_group(default)
  end
end
end;end;end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/rules/set/type/set/html_views/rule_lists.rb ~~
