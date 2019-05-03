# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
module TestContext;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/email/set/abstract/test_context.rb"; end
format :html do
  view :core do
    return super() if voo.hide? :test_context
    card.with_context test_context_card do
      super()
    end
  end

  def test_context_card
    card.left.fetch(trait: :test_context)&.item_card
  end
end

format :email_html do
  view :core do
    voo.hide! :test_context
    super()
  end
end

format :email_text do
  view :core do
    voo.hide! :test_context
    super()
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/email/set/abstract/test_context.rb ~~
