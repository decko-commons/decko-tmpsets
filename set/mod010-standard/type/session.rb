# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Session" cards
#
module Session;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/standard/set/type/session.rb"; end
include_set Pointer

def virtual?
  session_content.present?
end

def history?
  false
end

def followable?
  false
end

def recaptcha_on?
  false
end

def session_key
  "_card_#{key}"
end

def session_content
  Env.session[session_key]
end

def session_content= val
  Env.session[session_key] = val
end

def content
  db_content || session_content
end

event :store_in_session, :prepare_to_store, on: :save do
  self.session_content = db_content
  abort :success
end

event :delete_in_session, :prepare_to_store, on: :delete do
  self.session_content = nil
  abort :success
end

def ok_to_create
  true
end

def ok_to_update
  true
end

def add_to_trash args
  yield args.merge trash: true
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  before :core do
    voo.items[:view] = :name
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/standard/set/type/session.rb ~~
