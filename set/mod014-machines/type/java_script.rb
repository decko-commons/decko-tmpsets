# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# -*- encoding : utf-8 -*-
module JavaScript;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/machines/set/type/java_script.rb"; end

include_set Abstract::Script

format :js do
  view :core do
    _render_raw
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/machines/set/type/java_script.rb ~~
