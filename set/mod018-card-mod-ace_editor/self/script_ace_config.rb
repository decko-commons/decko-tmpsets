# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ScriptAceConfig"
#
module ScriptAceConfig;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-ace_editor/set/self/script_ace_config.rb"; end
include_set Abstract::CodeFile

Self::ScriptEditors.add_item :script_ace_config
All::Head::HtmlFormat.add_to_basket :mod_js_config, [:ace, "setAceConfig"]
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-ace_editor/set/self/script_ace_config.rb ~~
