# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Captcha"
#
module Captcha;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-account/set/self/captcha.rb"; end
setting_opts group: :permission,
             position: 5,
             help_text: "Anti-spam setting.  Requires non-signed-in users to complete a "\
                        "[[http://decko.org/captcha|captcha]] before adding or editing "\
                        "cards (where permitted)."
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-account/set/self/captcha.rb ~~
