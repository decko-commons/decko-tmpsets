# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "PlainText" cards
#
module PlainText;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/format/set/type/plain_text.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def input_type
    :text_area
  end

  view :core do
    process_content CGI.escapeHTML(_render_raw)
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/format/set/type/plain_text.rb ~~
