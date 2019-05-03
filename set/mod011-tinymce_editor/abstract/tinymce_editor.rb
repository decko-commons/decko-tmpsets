# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (TinymceEditor)
#
module TinymceEditor;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/tinymce_editor/set/abstract/tinymce_editor.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def tinymce_editor_input
    text_area :content, rows: 3, class: "tinymce-textarea d0-card-content",
                        id: unique_id
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/tinymce_editor/set/abstract/tinymce_editor.rb ~~
