# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (AceEditor)
#
module AceEditor;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-ace_editor/set/all/ace_editor.rb"; end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def ace_editor_input
    text_area :content, rows: 5,
                        class: "d0-card-content ace-editor-textarea",
                        "data-ace-mode" => ace_mode
  end

  def ace_mode
    :html
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-ace_editor/set/all/ace_editor.rb ~~
