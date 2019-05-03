# -*- encoding : utf-8 -*-
class Card; module Set; class Rule
# Set: All rule cards (Table)
#
module Table;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/rules/set/rule/table.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :open_rule, cache: :never, unknown: true,
                   wrap: { modal: { size: :large,
                                    title: :edit_rule_title,
                                    footer: "" } } do
    current_rule_form success_view: :rule_row, form_type: :modal
  end

  def edit_rule_title
    output [
      wrap_with(:h5, setting_title, class: "title font-weight-bold"),
      render_overlay_rule_help
    ]
  end

  # used in tables shown in set cards' core view
  view :rule_row, cache: :never, unknown: true do
    rule_card = find_existing_rule_card
    cols = %i[setting set]
    cols.insert(1, :content) if voo.show? :content
    wrap_closed_rule rule_card do
      cols.map do |cell|
        send "closed_rule_#{cell}_cell", rule_card
      end
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/rules/set/rule/table.rb ~~
