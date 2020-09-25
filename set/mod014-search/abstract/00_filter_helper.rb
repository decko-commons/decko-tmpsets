# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (FilterHelper)
#
# TODO: move sort/filter handling out of card and into base format
module FilterHelper;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/search/set/abstract/00_filter_helper.rb"; end
# sorting and filtering is about viewing the data, not altering the data itself.

def sort_hash
  sort_param.present? ? { sort: sort_param } : {}
end

def filter_param field
  filter_hash[field.to_sym]
end

# FIXME: it is inconsistent that #sort_hash has :sort as the key, but
# #filter_hash is the _value_ of the hash with :filter as the key.
def filter_hash
  @filter_hash ||=
    Env.params[:filter].present? ? Env.hash(Env.params[:filter]) : default_filter_hash
end

def sort_param
  @sort_param ||= safe_sql_param :sort
end

def safe_sql_param key
  param = Env.params[key]
  param.blank? ? nil : Card::Query.safe_sql(param)
end

def filter_keys_with_values
  filter_keys.map do |key|
    values = filter_param(key)
    values.present? ? [key, values] : next
  end.compact
end

# initial values for filtered search
def default_filter_hash
  {}
end

def offset
  param_to_i :offset, 0
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  delegate :filter_hash, :sort_hash, :filter_param, :sort_param,
           :all_filter_keys, to: :card

  def extra_paging_path_args
    super.merge filter_and_sort_hash
  end

  def filter_and_sort_hash
    sort_hash.merge filter: filter_hash
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/search/set/abstract/00_filter_helper.rb ~~
