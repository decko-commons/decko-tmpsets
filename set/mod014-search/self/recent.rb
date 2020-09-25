# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Recent"
#
module Recent;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/search/set/self/recent.rb"; end
ACTS_PER_PAGE = 25

view :title do
  voo.title ||= "Recent Changes"
  super()
end

def recent_acts
  action_relation = qualifying_actions.where "card_acts.id = card_act_id"
  Act.where("EXISTS (#{action_relation.to_sql})").order id: :desc
end

def qualifying_actions
  Action.all_viewable.where "draft is not true"
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    voo.hide :history_legend unless voo.main
    @acts_per_page = ACTS_PER_PAGE
    acts_layout card.recent_acts, :absolute
  end
end

module RssFormat; module_parent.send :register_set_format, Card::Format::RssFormat, self; extend Card::Set::AbstractFormat
  view :feed_item_description do
    render_blank
  end
end

module JsonFormat; module_parent.send :register_set_format, Card::Format::JsonFormat, self; extend Card::Set::AbstractFormat
  def items_for_export
    card.item_cards limit: 20
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/search/set/self/recent.rb ~~
