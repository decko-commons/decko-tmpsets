# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Number" cards
#
module Number;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/type/number.rb"; end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def input_type
    :text_field
  end
end

event :validate_number, :validate, on: :save do
  errors.add :content, tr(:not_numeric, content: content) unless valid_number?(content)
end

def valid_number? string
  return true if string.empty?

  valid = true
  begin
    Kernel.Float(string)
  rescue ArgumentError, TypeError
    valid = false
  end
  valid
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/type/number.rb ~~
