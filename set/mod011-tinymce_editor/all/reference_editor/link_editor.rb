# -*- encoding : utf-8 -*-
class Card; module Set; class All; module ReferenceEditor;
# Set: All cards (ReferenceEditor, LinkEditor)
#
module LinkEditor;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/tinymce_editor/set/all/reference_editor/link_editor.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :link_editor, cache: :never, unknown: true,
                     wrap: {
                       slot: { class: "_overlay d0-card-overlay card nodblclick" }
                     } do
    link_editor :overlay
  end

  view :modal_link_editor, cache: :never, unknown: true,
                           wrap: { slot: { class: "nodblclick" } } do
    modal_link_editor
  end

  def link_editor editor_mode
    @tm_snippet_editor_mode = editor_mode
    haml :reference_editor, ref_type: :link, editor_mode: @tm_snippet_editor_mode,
                            apply_opts: link_apply_opts, snippet: link_snippet
  end

  def modal_link_editor
    wrap_with :modal do
      link_editor :modal
    end
  end

  def link_snippet
    @link_snippet ||= LinkParser.new params[:tm_snippet_raw]
  end

  def link_apply_opts
    apply_tm_snippet_data link_snippet
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/tinymce_editor/set/all/reference_editor/link_editor.rb ~~
