# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Token" cards
module Token;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/account/set/right/token.rb"; end
include All::Permissions::Accounts

DURATIONS = "second|minute|hour|day|week|month|year".freeze

card_accessor :expiration

def history?
  false
end

view :raw do
  tr :private_data
end

def validate! token
  error =
    case
    when !real?           then [:token_not_found, tr(:error_token_not_found)]
    when expired?         then [:token_expired, tr(:error_token_expired)]
    when content != token then [:incorrect_token, tr(:error_incorrect_token)]
    end
  errors.add *error if error
end

def expired?
  !permanent? && updated_at <= term.ago
end

def permanent?
  term == "permanent"
end

def used!
  # immediate deletion was causing problems.  commenting for now
  # Auth.as_bot { delete! } unless permanent?
end

def term
  @term ||=
    if expiration.present?
      term_from_string expiration
    else
      Card.config.token_expiry
    end
end

def term_from_string string
  string.strip!
  return "permanent" if string == "none"
  re_match = /^(\d+)[\.\s]*(#{DURATIONS})s?$/.match(string)
  number, unit = re_match.captures if re_match
  raise Card::Open::Error, tr(:exception_bad_expiration, example: '2 days') unless unit
  number.to_i.send unit
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/account/set/right/token.rb ~~
