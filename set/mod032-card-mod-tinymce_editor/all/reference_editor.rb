# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (ReferenceEditor)
#
# shared helper methods for link editor and nest editor
module ReferenceEditor;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-tinymce_editor/set/all/reference_editor.rb"; end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def tinymce_id
    params[:tinymce_id]
  end

  def apply_tm_snippet_data snippet
    data = { "data-tinymce-id": tinymce_id }
    data[:"data-tm-snippet-start"] = tm_param(:start) if tm_param(:start).present?
    data[:"data-tm-snippet-size"] = snippet.raw.size if tm_param(:raw).present?
    data["data-dismiss"] = "modal" if modal_tm_snippet_editor?
    data
  end

  def tm_param key
    params[:"tm_snippet_#{key}"]
  end

  def modal_tm_snippet_editor?
    @tm_snippet_editor_mode != :overlay
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-tinymce_editor/set/all/reference_editor.rb ~~
