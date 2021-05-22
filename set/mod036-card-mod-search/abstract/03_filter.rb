# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Filter)
#
# include_set Abstract::Utility
module Filter;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/search/set/abstract/03_filter.rb"; end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def filter_class
    Card::FilterQuery
  end

  def filter_keys
    [:name]
  end

  def filter_keys_from_params
    filter_hash.keys.map(&:to_sym) - [:not_ids]
  end

  def sort_options
    { "Alphabetical": :name, "Recently Added": :create }
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :filtered_content, template: :haml, wrap: :slot

  view :filtered_results do
    wrap { render_core }
  end

  view :selectable_filtered_content, template: :haml, cache: :never
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/search/set/abstract/03_filter.rb ~~
