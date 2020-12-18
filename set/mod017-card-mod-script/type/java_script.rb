# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "JavaScript" cards
#
# -*- encoding : utf-8 -*-
module JavaScript;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-script/set/type/java_script.rb"; end

include_set Abstract::Script

module JsFormat; module_parent.send :register_set_format, Card::Format::JsFormat, self; extend Card::Set::AbstractFormat
  view :core do
    _render_raw
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-script/set/type/java_script.rb ~~
