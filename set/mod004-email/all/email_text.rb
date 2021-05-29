# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (EmailText)
#
module EmailText;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/email/set/all/email_text.rb"; end
module EmailTextFormat; module_parent.send :register_set_format, Card::Format::EmailTextFormat, self; extend Card::Set::AbstractFormat
  view :unknown do
    ""
  end

  view :compact_missing do
    ""
  end

  view :last_action, perms: :none, cache: :never do
    _render_last_action_verb
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/email/set/all/email_text.rb ~~
