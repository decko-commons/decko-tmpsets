# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards
module AllJs;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/basic_formats/set/all/all_js.rb"; end

module JsFormat; parent.send :register_set_format, Card::Format::JsFormat, self; extend Card::Set::AbstractFormat
  def default_item_view
    :core
  end

  view :source do
    path format: :js
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/basic_formats/set/all/all_js.rb ~~
