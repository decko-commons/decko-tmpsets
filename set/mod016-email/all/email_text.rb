# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (EmailText)
#
module EmailText;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/email/set/all/email_text.rb"; end

module EmailTextFormat; parent.send :register_set_format, Card::Format::EmailTextFormat, self; extend Card::Set::AbstractFormat
  view :missing do
    ""
  end

  view :closed_missing do
    ""
  end

  view :last_action, perms: :none, cache: :never do
    _render_last_action_verb
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/email/set/all/email_text.rb ~~
