# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards
module NestImage;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/edit/set/all/nest_image.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :nest_image, wrap: { modal: { footer: "" } } do
    nest card.autoname(card.name.field("image01")), view: :new_image, type: :image
  end

  view :new_image, perms: :create, unknown: true, cache: :never do
    new_view_frame_and_form new_image_form_opts
  end

  def new_image_form_opts
    { buttons: new_image_buttons,
      success: { view: :open_nest_editor, format: :js,
                 tinymce_id: Env.params[:tinymce_id] },
      "data-slotter-mode": "silent-success" }
  end

  def new_image_buttons
    button_formgroup do
      [standard_save_and_close_button(no_origin_update: true),
       modal_close_button("Cancel", class: "btn-sm")]
    end
  end
end

module JsFormat; parent.send :register_set_format, Card::Format::JsFormat, self; extend Card::Set::AbstractFormat
  view :open_nest_editor do
    tm_id = if Env.params[:tinymce_id].present?
              "\"#{Env.params[:tinymce_id]}\""
            else
              '$(".tinymce-textarea").attr("id")'
            end
    <<-JAVASCRIPT.strip_heredoc
      tm = tinymce.get(#{tm_id});
      nest.insertNest(tm, "{{+#{card.name.tag}|size: medium}}");
    JAVASCRIPT
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/edit/set/all/nest_image.rb ~~
