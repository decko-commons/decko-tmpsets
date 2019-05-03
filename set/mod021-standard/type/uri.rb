# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Uri" cards
#
module Uri;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/type/uri.rb"; end
module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :core do
    link_to_resource _render_raw, render_title
  end

  view :url_link do
    link_to_resource _render_raw
  end
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def editor
    :text_field
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/type/uri.rb ~~
