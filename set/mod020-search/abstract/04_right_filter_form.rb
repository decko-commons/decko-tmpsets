# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# To be included in a field card to get a filter for the parent.
module RightFilterForm;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/search/set/abstract/04_right_filter_form.rb"; end
# The core view renders a filter for the left card.

include_set Set::Abstract::Filter

def virtual?
  true
end

format :html do
  def filter_action_path
    path mark: card.name.left, view: filter_view
  end

  view :core, cache: :never do
    filter_fields slot_selector: ".filter_result-view"
  end

  def filter_view
    :filter_result
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/search/set/abstract/04_right_filter_form.rb ~~
