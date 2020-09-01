# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Head"
#
module Head;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/basic_formats/set/self/head.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  # when *head is rendered in the main body of a page, we escape the HTML
  # otherwise (most typically in the head tag, of course), we render the
  # HTML unescaped
  view :core, cache: :never do
    escape_in_main do
      nest root.card, view: :head
      # note that the head tag for each card is different
      # (different title, different style rules, etc)
      # so we don't cache the core of *head, but we _do_ cache some
      # views within each head (see all/head.rb)
    end
  end

  view :input do
    "Content can't be edited."
  end

  def escape_in_main
    main? ? (h yield) : yield
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/basic_formats/set/self/head.rb ~~
