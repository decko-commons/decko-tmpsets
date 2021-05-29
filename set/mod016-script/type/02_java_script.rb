# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "JavaScript" cards
#
# -*- encoding : utf-8 -*-
module JavaScript;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/script/set/type/02_java_script.rb"; end

include_set Abstract::Script

module JsFormat; module_parent.send :register_set_format, Card::Format::JsFormat, self; extend Card::Set::AbstractFormat
  view :core do
    _render_raw
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :include_tag do
    javascript_include_tag card.format(:js).render(:source)
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/script/set/type/02_java_script.rb ~~
