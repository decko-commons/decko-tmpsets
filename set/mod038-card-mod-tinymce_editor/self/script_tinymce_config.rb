# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ScriptTinymceConfig"
#
module ScriptTinymceConfig;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/tinymce_editor/set/self/script_tinymce_config.rb"; end
include_set Abstract::CodeFile

Self::ScriptEditors.add_item :script_tinymce_config
All::Head::HtmlFormat.add_to_basket :mod_js_config, [:tiny_mce, "setTinyMCEConfig"]
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/tinymce_editor/set/self/script_tinymce_config.rb ~~
