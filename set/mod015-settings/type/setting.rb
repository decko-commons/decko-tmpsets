# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Setting" cards
#
module Setting;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/type/setting.rb"; end
require_dependency "json"

def self.member_names
  @@member_names ||= begin
    Card.search(
      { type_id: SettingID, return: "key" },
      "all setting cards"
    ).each_with_object({}) do |card_key, hash|
      hash[card_key] = true
    end
  end
end

module DataFormat; parent.send :register_set_format, Card::Format::DataFormat, self; extend Card::Set::AbstractFormat
  view :core do
    wql = { left: { type: Card::SetID },
            right: card.id,
            limit: 0 }
    Card.search(wql).compact.map { |c| nest c }
  end
end

def set_classes_with_rules
  Card.set_patterns.reverse.map do |set_class|
    wql = { left: { type: Card::SetID },
            right: id,
            sort: %w[content name],
            limit: 0 }
    wql[:left][(set_class.anchorless? ? :id : :right_id)] = set_class.pattern_id

    rules = Card.search wql
    [set_class, rules] unless rules.empty?
  end.compact
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def duplicate_check rules
    previous_content = nil
    rules.each do |rule|
      current_content = rule.db_content.strip
      duplicate = previous_content == current_content
      changeover = previous_content && !duplicate
      previous_content = current_content
      yield rule, duplicate, changeover
    end
  end

  def rule_link rule, text
    link_to_card rule, text, path: { view: :modal_rule },
                             slotter: true, "data-modal-class": "modal-lg"
  end

  view :core do
    haml do
      <<-'HAML'.strip_heredoc
        = _render_rule_help
        %table.table.table-borderless.setting-rules
          %tr
            %th Set
            %th Rule
          - card.set_classes_with_rules.each do |klass, rules|
            %tr.klass-row
              %td{class: ['setting-klass', "anchorless-#{klass.anchorless?}"]}
                = klass.anchorless? ? rule_link(rules.first, klass.pattern) : klass.pattern
              %td.rule-content-container
                %span.closed-content.content
                  - if klass.anchorless?
                    = subformat(rules.first)._render_closed_content
            - if !klass.anchorless?
              - duplicate_check(rules) do |rule, duplicate, changeover|
                %tr{class: ('rule-changeover' if changeover)}
                  %td.rule-anchor
                    = rule_link rule, rule.name.trunk_name.trunk_name
                  - if duplicate
                    %td
                  - else
                    %td.rule-content-container
                      %span.closed-content.content
                        = subformat(rule)._render_closed_content
      HAML
    end
  end

  # Because +*help content renders in "template" mode when you render its content
  # directly, we render the help text in the context of the *all+<setting> card
  view :rule_help do
    nest [:all, card.name], view: :rule_help
  end

  view :closed_content do
    render_rule_help
  end
end

module JsonFormat; parent.send :register_set_format, Card::Format::JsonFormat, self; extend Card::Set::AbstractFormat
  def items_for_export
    Card.search left: { type: Card::SetID }, right: card.id, limit: 0
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/type/setting.rb ~~
