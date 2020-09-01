# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "RecaptchaSecretKey"
#
module RecaptchaSecretKey;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/recaptcha/set/self/recaptcha_secret_key.rb"; end
event :validate_recaptcha_secret_key, :validate do
  return if content.match?(/^[a-zA-Z0-9\-_]*$/)

  errors.add :content, "invalid key" # LOCALIZE
end

event :set_recaptcha_secret_key, :finalize do
  Card.config.recaptcha_secret_key = content
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/recaptcha/set/self/recaptcha_secret_key.rb ~~
