# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "LayoutType" cards
#
# -*- encoding : utf-8 -*-
module LayoutType;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/type/layout_type.rb"; end

include_set Type::Html

event :update_layout_registry, :finalize, on: :update do
  Card::Layout.deregister_layout name
  Card::Layout.register_layout_with_nest name, format
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    with_nest_mode :template do
      process_content ::CodeRay.scan(_render_raw, :html).div
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/type/layout_type.rb ~~
