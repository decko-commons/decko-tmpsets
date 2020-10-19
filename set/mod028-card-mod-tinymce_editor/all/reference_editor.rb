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

  def tm_param key
    params[:"tm_snippet_#{key}"]
  end

  def modal_tm_snippet_editor?
    @tm_snippet_editor_mode != :overlay
  end

  private

  def apply_tm_snippet_data snippet
    { "data-tinymce-id": tinymce_id }.tap do |data|
      apply_tm_snippet_var(data, :start) { tm_param :start }
      apply_tm_snippet_var(data, :size, :raw) { snippet.raw.size }
      data["data-dismiss"] = "modal" if modal_tm_snippet_editor?
      data["data-index"] = params["index"] if params["index"].present?
    end
  end

  def apply_tm_snippet_var data, varname, paramname=nil
    return unless tm_param(paramname || varname).present?

    data[:"data-tm-snippet-#{varname}"] = yield
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-tinymce_editor/set/all/reference_editor.rb ~~
