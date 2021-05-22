# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Account" cards
#
module Account;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/api_key/set/right/account.rb"; end
card_accessor :api_key

delegate :authenticate_api_key, to: :api_key_card

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :api_key do
    field_nest :api_key
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/api_key/set/right/account.rb ~~
