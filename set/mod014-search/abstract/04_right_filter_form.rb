# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (RightFilterForm)
#
# To be included in a field card to get a filter for the parent.
module RightFilterForm;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/search/set/abstract/04_right_filter_form.rb"; end
# The core view renders a filter for the left card.

include_set Set::Abstract::Filter

def virtual?
  new?
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def filter_action_path
    path mark: card.name.left, view: filter_view
  end

  view :core, cache: :never do
    filter_fields slot_selector: filter_selector
  end

  def filter_view
    :filter_result
  end

  def filter_selector
    ".#{filter_view}-view"
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/search/set/abstract/04_right_filter_form.rb ~~
