# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Content)
#
module Content;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/content.rb"; end
def content= value
  self.db_content = value
end

def content
  structured_content || standard_content
end
alias raw_content content #DEPRECATED!

def content?
  content.present?
end

def standard_content
  db_content || (new_card? && template.db_content)
end

def structured_content
  structure && template.db_content
end

module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def chunk_list # override to customize by set
    :default
  end
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :hidden_content_field, unknown: true, cache: :never do
    hidden_field :content, class: "d0-card-content"
  end
end

def label
  name
end

def creator
  Card[creator_id]
end

def updater
  Card[updater_id]
end

def save_content_draft _content
  clear_drafts
end

def clear_drafts
  drafts.created_by(Card::Auth.current_id).each(&:delete)
end

def last_draft_content
  drafts.last.card_changes.last.value
end

event :set_content, :store, on: :save do
  self.db_content = prepare_db_content
  @selected_action_id = @selected_content = nil
  clear_drafts
  reset_patterns_if_rule true
end

event :save_draft, :store, on: :update, when: :draft? do
  save_content_draft content
  abort :success
end

event :set_default_content,
      :prepare_to_validate,
      on: :create, when: :use_default_content? do
  self.db_content = template.db_content
end

def draft?
  Env.params["draft"] == "true"
end

def prepare_db_content
  cont = standard_db_content || "" # necessary?
  clean_html? ? Card::Content.clean!(cont) : cont
end

def standard_db_content
  if structure
    # do not override db_content with content from structure
    db_content
  else
    standard_content
  end
end

def clean_html?
  true
end

def use_default_content?
  !db_content_changed? && template && template.db_content.present?
end

def unfilled?
  blank_content? && blank_comment? && !subcards?
end

def blank_content?
  content.blank? || content.strip.blank?
end

def blank_comment?
  comment.blank? || comment.strip.blank?
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/content.rb ~~
