# -*- encoding : utf-8 -*-
class Card; module Set; class All
module AllJs;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/basic_formats/set/all/all_js.rb"; end

format :js do
  def default_item_view
    :core
  end

  view :source do
    path format: :js
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/basic_formats/set/all/all_js.rb ~~
