# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ScriptAce"
#
module ScriptAce;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/ace_editor/set/self/script_ace.rb"; end
include_set Abstract::CodeFile

Self::ScriptLibraries.add_item :script_ace
Self::InputOptions.add_to_basket :options, "ace editor"
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/ace_editor/set/self/script_ace.rb ~~
