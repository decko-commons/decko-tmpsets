# -*- encoding : utf-8 -*-
class Card; module Set; class Right
module HtmlMessage;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/email/set/right/html_message.rb"; end
include_set Abstract::TestContext

def clean_html?
  false
end

format :email_html do
  def email_content context
    content = contextual_content context
    return unless content.present?
    Card::Mailer.layout content
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/email/set/right/html_message.rb ~~
