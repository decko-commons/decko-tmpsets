# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards
# shared methods for card collections (Pointers, Searches, Sets, etc.)
module Collection;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/collection.rb"; end
module ClassMethods
  def search spec, comment=nil
    results = ::Card::Query.run(spec, comment)
    if block_given? && results.is_a?(Array)
      results.each { |result| yield result }
    end
    results
  end

  def count_by_wql spec
    spec = spec.clone
    spec.delete(:offset)
    search spec.merge(return: "count")
  end

  def find_each options={}
    # this is a copy from rails (3.2.16) and is needed because this
    # is performed by a relation (ActiveRecord::Relation)
    find_in_batches(options) do |records|
      records.each { |record| yield record }
    end
  end

  def find_in_batches options={}
    if block_given?
      super(options) do |records|
        yield(records)
        Card::Cache.reset_soft
      end
    else
      super(options)
    end
  end
end

def collection?
  item_cards != [self]
end

module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :count do
    card.item_names.size
  end
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :carousel do
    bs_carousel unique_id, 0 do
      nest_item_array.each do |rendered_item|
        item(rendered_item)
      end
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/collection.rb ~~
