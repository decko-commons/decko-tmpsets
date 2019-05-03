# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (EmailField)
module EmailField;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/email/set/abstract/email_field.rb"; end

module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  # turn off autodetection of uri's
  def chunk_list
    :references
  end
end

# format :html do
#   def pointer_items args
#     card.item_names(context: :raw).map do |iname|
#       wrap_item iname, args
#     end
#   end
# end#

module EmailTextFormat; parent.send :register_set_format, Card::Format::EmailTextFormat, self; extend Card::Set::AbstractFormat
  def email_addresses context
    context ||= self
    card.item_names(context: context.name).map do |name|
      # FIXME: context is processed twice here because pointers absolutize
      # item_names by default while other types can return relative names.
      # That's poor default behavior and should be fixed!
      name = name.to_name.absolute context
      email_address?(name) ? name : email_address_from_card(name, context)
    end.flatten.compact.join(", ")
  end

  def email_address? string
    string =~ /.+\@.+\..+/
  end

  def email_address_from_card name, context
    card = Card.fetch name
    card.account&.email || email_addresses_from_card_content(card, context)
  end

  def email_addresses_from_card_content card, context
    subformat(card).contextual_content(context).split(/[,\n]/)
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/email/set/abstract/email_field.rb ~~
