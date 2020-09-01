# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "RecaptchaSiteKey"
#
module RecaptchaSiteKey;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/recaptcha/set/self/recaptcha_site_key.rb"; end
event :validate_recaptcha_site_key, :validate do
  return if content.match?(/^[a-zA-Z0-9\-_]*$/)

  errors.add :content, "invalid key" # LOCALIZE
end

event :set_recaptcha_site_key, :finalize do
  Card.config.recaptcha_site_key = content
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/recaptcha/set/self/recaptcha_site_key.rb ~~
