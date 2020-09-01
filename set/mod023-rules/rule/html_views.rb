# -*- encoding : utf-8 -*-
class Card; module Set; class Rule
# Set: All rule cards (HtmlViews)
#
module HtmlViews;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/rules/set/rule/html_views.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    # Rule cards that are searches are usual right structures and refer to the left
    # in the search query. In that case the search doesn't work
    # properly in the context of the rule card itself.  Hence we show the query syntax
    # and not the search result.
    if card.type_id == SearchTypeID
      render_raw
    else
      super()
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/rules/set/rule/html_views.rb ~~
