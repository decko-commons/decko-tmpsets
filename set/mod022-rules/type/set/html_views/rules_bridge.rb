# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module Set;; module HtmlViews;
# Set: All "Set+HtmlViews" cards (HtmlViews, RulesBridge)
#
module RulesBridge;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/rules/set/type/set/html_views/rules_bridge.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :bridge_rules_tab, cache: :never do
    output [rules_filter, render_rules_list]
  end

  view :rules_list, wrap: :slot do
    group = params[:group]&.to_sym || :common
    rules_list group, setting_list(group)
  end

  def rules_list _key, items
    bridge_pills(items.map { |i| rules_list_item i })
  end

  def rules_list_item setting, view=:rule_bridge_link
    return "" unless show_view? setting

    rule_card = card.fetch trait: setting, new: {}
    nest(rule_card, view: view).html_safe
  end
end
end;end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/rules/set/type/set/html_views/rules_bridge.rb ~~
