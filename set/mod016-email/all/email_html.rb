# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards
module EmailHtml;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/email/set/all/email_html.rb"; end
module EmailHtmlFormat; parent.send :register_set_format, Card::Format::EmailHtmlFormat, self; extend Card::Set::AbstractFormat
  view :missing do
    ""
  end

  view :closed_missing do
    ""
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/email/set/all/email_html.rb ~~
