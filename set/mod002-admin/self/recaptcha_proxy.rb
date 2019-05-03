# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "RecaptchaProxy"
#
module RecaptchaProxy;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/admin/set/self/recaptcha_proxy.rb"; end
event :set_recaptcha_proxy, :finalize do
  Card.config.recaptcha_proxy = content
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/admin/set/self/recaptcha_proxy.rb ~~
