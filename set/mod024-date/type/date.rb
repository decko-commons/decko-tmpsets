# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Date" cards
#
module Date;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/date/set/type/date.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def editor
    :calendar
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/date/set/type/date.rb ~~
