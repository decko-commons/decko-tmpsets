# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
module TinymceEditor;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/tinymce_editor/set/abstract/tinymce_editor.rb"; end
format :html do
  def tinymce_editor_input
    text_area :content, rows: 3, class: "tinymce-textarea d0-card-content",
                        id: unique_id
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/tinymce_editor/set/abstract/tinymce_editor.rb ~~
