# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module Set;; module HtmlViews;
# Set: All "Set+HtmlViews" cards (HtmlViews, NestRules)
#
module NestRules;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/rules/set/type/set/html_views/nest_rules.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :nest_rules, cache: :never, unknown: true, wrap: :slot do
    output [rules_filter(:field_related_rules, :self),
            quick_edit_rules_list(:field_related)]
  end

  def quick_edit_rules_list list
    list_tag class: "nav nav-pills flex-column bridge-pills" do
      setting_list(list).map do |setting|
        rules_list_item setting, :quick_edit
      end
    end
  end
end
end;end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/rules/set/type/set/html_views/nest_rules.rb ~~
