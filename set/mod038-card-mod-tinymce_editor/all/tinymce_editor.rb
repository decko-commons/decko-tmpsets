# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (TinymceEditor)
#
module TinymceEditor;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/tinymce_editor/set/all/tinymce_editor.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def tinymce_editor_input
    text_area :content, rows: 3, class: "tinymce-textarea d0-card-content",
                        id: unique_id
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/tinymce_editor/set/all/tinymce_editor.rb ~~
