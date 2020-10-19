# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Filter)
#
module Filter;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-search/set/abstract/03_filter.rb"; end
include_set Abstract::Utility

def filter_class
  Card::FilterQuery
end

def filter_keys
  [:name]
end

def filter_keys_from_params
  filter_hash.keys.map(&:to_sym) - [:not_ids]
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def sort_options
    { "Alphabetical": :name, "Recently Added": :create }
  end

  view :filtered_content, template: :haml, wrap: :slot

  view :selectable_filtered_content, template: :haml, cache: :never
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-search/set/abstract/03_filter.rb ~~
