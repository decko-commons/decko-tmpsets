# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Password" cards
#
module Password;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/account/set/right/password.rb"; end
include_set Abstract::AccountField

def history?
  false
end

def ok_to_read
  own_account? || super
end

event :encrypt_password, :store,
      on: :save, changed: :content,
      when: proc { !Card::Env[:no_password_encryptions] } do
  # no_password_encryptions = hack for import - fix with api for ignoring events
  salt = left&.salt
  self.content = Auth.encrypt content, salt

  # errors.add :password, 'need a valid salt'
  # turns out we have a lot of existing account without a salt.
  # not sure when that broke??
end

event :validate_password, :validate, on: :save do
  return if content.length > 3

  errors.add :password, t(:account_password_length)
end

event :validate_password_present, :prepare_to_validate, on: :update do
  abort :success if content.blank?
end

view :raw do
  t :account_encrypted
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core, wrap: :em do
    render_raw
  end

  view :input do
    card.content = ""
    password_field :content, class: "d0-card-content", autocomplete: autocomplete?
  end

  def autocomplete?
    return "on" if @parent && @parent.card.name == "*signin+*account" # HACK

    "off"
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/account/set/right/password.rb ~~
