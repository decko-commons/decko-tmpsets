# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (AceEditor)
module AceEditor;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/ace_editor/set/abstract/ace_editor.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
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
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/ace_editor/set/abstract/ace_editor.rb ~~
