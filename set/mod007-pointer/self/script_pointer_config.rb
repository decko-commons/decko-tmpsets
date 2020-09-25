# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ScriptPointerConfig"
#
module ScriptPointerConfig;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/self/script_pointer_config.rb"; end
include_set Abstract::CodeFile

FILE_NAMES = %w[pointer_config pointer_list_editor]

def source_files
  coffee_files FILE_NAMES
end

Self::ScriptEditors.add_item :script_pointer_config
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/self/script_pointer_config.rb ~~
