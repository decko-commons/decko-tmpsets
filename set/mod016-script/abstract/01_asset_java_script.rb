# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (AssetJavaScript)
#
# -*- encoding : utf-8 -*-
module AssetJavaScript;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/script/set/abstract/01_asset_java_script.rb"; end

include_set Abstract::AssetFile

def compress_js?
  @minimize
end

module JsFormat; module_parent.send :register_set_format, Card::Format::JsFormat, self; extend Card::Set::AbstractFormat
  view :source do
    if @local
      card.machine_output_url
    else
      source
    end
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :javascript_include_tag do
    javascript_include_tag card.machine_output_url
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/script/set/abstract/01_asset_java_script.rb ~~
