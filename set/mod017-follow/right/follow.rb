# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Follow" cards
# The Right::Follow set configures follow preferences (`[Set]+[User]+:follow`)
# While the user follow dashboard ([User]+:follow`) is also in this Set, its
module Follow;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/follow/set/right/follow.rb"; end
# customizations are handled in TypePlusRight::User::Follow

event :cache_expired_for_new_preference, :integrate, when: :is_preference? do
  Card.follow_caches_expired
end

def option_cards
  Card::FollowOption.cards.compact
end

def options_rule_card
  Card.new(
    name: "follow_options_card",
    type_code: :pointer,
    content: option_cards.map { |oc| "[[#{oc.name}]]" }.join("\n")
  )
end

def add_follow_item? condition
  new_card? || !include_item?(condition)
end

def ok_to_update
  permit :update
end

def ok_to_create
  permit :create
end

def ok_to_delete
  permit :delete
end

def permit action, verb=nil
  if %i[create delete update].include?(action) && allowed_to_change_follow_status?
    true
  else
    super action, verb
  end
end

def allowed_to_change_follow_status?
  Auth.signed_in? &&
    ((user = rule_user) && Auth.current_id == user.id) || Auth.always_ok?
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  # shows a follow item link for each of the current follow options
  view :follow_status, cache: :never do
    wrap { haml :follow_status }
  end

  # interface to view/alter a specific rule option
  view :follow_item, cache: :never do
    follow_item Env.params[:condition]
  end

  def follow_item condition, button=true
    condition ||= "*always"
    wrap do
      card_form action: :update, success: { view: :follow_item } do
        [
          follow_item_hidden_tags(condition),
          (follow_item_button(condition) if button),
          follow_item_link(condition)
        ].compact
      end
    end
  end

  def rule_form_args
    super.merge "data-update-foreign-slot": ".card-slot.follow_section-view"
  end

  private

  def follow_item_hidden_tags condition
    condkey = card.add_follow_item?(condition) ? :add_item : :drop_item
    hidden_tags condition: condition, condkey => condition
  end

  def follow_item_button condition
    action = card.add_follow_item?(condition) ? :add : :delete
    button_tag type: :submit, "aria-label": "Left Align",
               class: "btn-sm btn-item #{follow_item_button_class action}" do
      follow_item_icon action
    end
  end

  def follow_item_button_class action
    action == :add ? "btn-item-add" : "btn-item-delete btn-primary"
  end

  def follow_item_icon action
    icon_tag(action == :add ? :add : :check)
  end

  def follow_item_link condition
    link_to_card follow_item_link_target, follow_item_link_text(condition)
  end

  def follow_item_link_target
    set = card.rule_set
    setname = set.name
    set.tag.codename == :self ? setname.left : setname.field("by name")
  end

  def follow_item_link_text condition
    if (option_card = Card.fetch condition)
      option_card.description card.rule_set
    else
      card.rule_set.follow_label
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/follow/set/right/follow.rb ~~
