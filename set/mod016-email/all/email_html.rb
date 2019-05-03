# -*- encoding : utf-8 -*-
class Card; module Set; class All
module EmailHtml;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/email/set/all/email_html.rb"; end
format :email_html do
  view :missing do
    ""
  end

  view :closed_missing do
    ""
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/email/set/all/email_html.rb ~~
