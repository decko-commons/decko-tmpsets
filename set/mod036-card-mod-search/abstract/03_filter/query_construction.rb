# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Filter;
# Set: Abstract (Filter, QueryConstruction)
#
module QueryConstruction;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/search/set/abstract/03_filter/query_construction.rb"; end
module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  # all filter keys in the order they were selected
  def all_filter_keys
    @all_filter_keys ||= filter_keys_from_params | filter_keys
  end

  def filter_and_sort_cql
    filter_cql.merge sort_cql
  end

  def filter_cql
    return {} if filter_hash.empty?

    filter_cql_from_params
  end

  # separate method is needed for tests
  def filter_cql_from_params
    filter_class.new(filter_keys_with_values, blocked_id_cql).to_cql
  end

  def sort_cql
    { sort: current_sort }
  end

  def blocked_id_cql
    not_ids = filter_param :not_ids
    not_ids.present? ? { id: ["not in", not_ids.split(",")] } : {}
  end

  def current_sort
    sort_param || default_sort_option
  end

  def default_sort_option
    card.cql_content[:sort]
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/search/set/abstract/03_filter/query_construction.rb ~~
