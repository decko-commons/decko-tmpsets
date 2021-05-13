# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Extended)
#
module Extended;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-collection/set/all/extended.rb"; end
def extended_item_cards context=nil
  items = item_cards limit: "", context: (context || self).name
  list = []
  book = ::Set.new # avoid loops
  extend_item_list items, list, book until items.empty?
  list
end

def extended_item_contents context=nil
  extended_item_cards(context).map(&:item_names).flatten
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  delegate :extended_item_contents, to: :card
end

private

def extend_item_list items, list, book
  item = items.shift
  return if already_extended? item, book

  if item.collection?
    # keep items in order
    items.unshift(*item.item_cards)
  else  # no further level of items
    list << item
  end
end

def already_extended? item, book
  return true if book.include? item

  book << item
  false
end

# def extended_list context=nil
#   context = (context ? context.name : name)
#   args = { limit: "" }
#   item_cards(args.merge(context: context)).map do |x|
#     x.item_cards(args)
#   end.flatten.map do |x|
#     x.item_cards(args)
#   end.flatten.map do |y|
#     y.item_names(args)
#   end.flatten
#   # this could go on and on.  more elegant to recurse until you don't have
#   # a collection
# end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-collection/set/all/extended.rb ~~
