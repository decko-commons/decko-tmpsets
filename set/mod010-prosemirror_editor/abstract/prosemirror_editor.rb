# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
module ProsemirrorEditor;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/prosemirror_editor/set/abstract/prosemirror_editor.rb"; end
format :html do
  def prosemirror_editor_input
    wrap_with :div, id: unique_id, class: "prosemirror-editor" do
      hidden_field :content, class: "d0-card-content", value: card.content
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/prosemirror_editor/set/abstract/prosemirror_editor.rb ~~
