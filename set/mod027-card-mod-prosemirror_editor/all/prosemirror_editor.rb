# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (ProsemirrorEditor)
#
module ProsemirrorEditor;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-prosemirror_editor/set/all/prosemirror_editor.rb"; end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def prosemirror_editor_input
    wrap_with :div, id: unique_id, class: "prosemirror-editor" do
      hidden_field :content, class: "d0-card-content", value: card.content
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-prosemirror_editor/set/all/prosemirror_editor.rb ~~
