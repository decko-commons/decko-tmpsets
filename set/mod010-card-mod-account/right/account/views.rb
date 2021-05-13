# -*- encoding : utf-8 -*-
class Card; module Set; class Right; module Account;
# Set: All "+Account+Views" cards (Views)
#
module Views;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-account/set/right/account/views.rb"; end
module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :verify_url, cache: :never do
    raise Error::PermissionDenied unless card.ok?(:create) || card.action

    token_url :verify_and_activate, anonymous: true
  end

  view :reset_password_url do
    raise Error::PermissionDenied unless card.password_card.ok? :update

    token_url :reset_password
  end

  view :token_expiry do
    "(#{token_expiry_sentence}"
  end

  view :token_days do
    Card.config.token_expiry / 1.day
  end

  # DEPRECATED
  view :verify_days, :token_days
  view :reset_password_days, :token_days

  def token_url trigger, extra_payload={}
    card_url path(action: :update,
                  card: { trigger: trigger },
                  token: new_token(extra_payload))
  end

  def token_expiry_sentence
    "Link will expire in #{render_token_days} days"
  end

  def new_token extra_payload
    Auth::Token.encode card.accounted_id, extra_payload
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    [account_field_nest(:email, "email"),
     account_field_nest(:password, "password")]
  end

  def account_field_nest field, title
    field_nest field, title: title, view: :labeled
    # edit: :inline, hide: [:help_link, :bridge_link]
  end

  before :content_formgroups do
    voo.edit_structure = [[:email, "email"], [:password, "password"]]
  end

  view :token_expiry do
    "<p><em>#{token_expiry_sentence}</em></p>"
  end
end

module EmailHtmlFormat; module_parent.send :register_set_format, Card::Format::EmailHtmlFormat, self; extend Card::Set::AbstractFormat
  def mail context, fields
    super context, fields.reverse_merge(to: card.email)
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-account/set/right/account/views.rb ~~
