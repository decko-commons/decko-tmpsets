# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ScriptDecko"
#
module ScriptDecko;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-machines/set/self/script_decko.rb"; end
include_set Abstract::CodeFile

def source_files
  %w[mod editor name_editor autosave doubleclick layout navbox upload
     slot modal overlay recaptcha slotter bridge
     nest_editor nest_editor_rules nest_editor_options nest_editor_name
     link_editor
     components decko follow card_menu slot_ready
     filter filter_links filter_items selectable_filtered_content].map do |n|
    "decko/#{n}.js.coffee"
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-machines/set/self/script_decko.rb ~~
