# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "ModScriptAssets" cards
#
module ModScriptAssets;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/script/set/type/mod_script_assets.rb"; end
include_set Abstract::ModAssets

def subpath
  "javascript"
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :javascript_include_tag do
    card.item_cards.map do |icard|
      nest icard, view: :javascript_include_tag
    end.join("\n")
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/script/set/type/mod_script_assets.rb ~~
