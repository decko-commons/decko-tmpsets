# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (ContextualContent)
#
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

module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
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
