# -*- encoding : utf-8 -*-
class Card; module Set; class All
module ContextualContent;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/contextual_content.rb"; end
def context_card
  @context_card || self
end

def with_context context_card
  old_context = @context_card
  @context_card = context_card if context_card
  yield
ensure
  @context_card = old_context
end

format do
  def context_card
    card.context_card
  end

  def with_context context_card
    card.with_context context_card do
      yield
    end
  end

  def contextual_content context_card, options={}
    view = options.delete(:view) || :core
    with_context(context_card) { render! view, options }
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/contextual_content.rb ~~
