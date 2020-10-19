# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ScriptTinymce"
#
module ScriptTinymce;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-tinymce_editor/set/self/script_tinymce.rb"; end
include_set Abstract::CodeFile

Self::ScriptMods.add_item :script_tinymce
Self::InputOptions.add_to_basket :options, "tinymce editor"
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-tinymce_editor/set/self/script_tinymce.rb ~~
