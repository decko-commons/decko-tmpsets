# -*- encoding : utf-8 -*-
class Card; module Set; class TypePlusRight; module User;
# Set: All "+Email" cards on "User" cards
#
# supports legacy references to <User>+*email
module Email;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/account/set/type_plus_right/user/email.rb"; end
# (standard representation is now <User>+*account+*email)
view :raw do
  card.content_email || card.account_email || ""
end

def content_email
  content if real?
end

def account_email
  left&.account&.email
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/account/set/type_plus_right/user/email.rb ~~
