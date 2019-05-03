# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module Set;; module HtmlViews;
# Set: All "Set" cards
module Template;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/rules/set/type/set/html_views/template.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :template_link, cache: :never do
    wrap do
      voo.title = parent.voo.nest_syntax if parent
      "{{#{link_to_template_editor}}}"
    end
  end

  def link_to_template_editor
    link_to_view :template_editor, voo.title, path: { slot: { title: voo.title } }
  end

  # TODO: hamlize
  view :template_editor do
    wrap { haml :template_editor }
  end

  def frame_header
    voo.show?(:template_closer) ? template_frame_header : super
  end

  def template_frame_header
    [render_template_closer, _render_header]
  end

  # no slot, because frame is inside template_editor's slot
  def standard_frame slot=true
    voo.show?(:template_closer) ? super(false) : super
  end

  view :template_editor_frame do
    voo.title = card.label
    frame do
      _render_core
    end
  end

  view :template_closer do
    wrap_with "div", class: "card-menu template-closer" do
      link_to_view :template_link, icon_tag("remove")
    end
  end
end
end;end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/rules/set/type/set/html_views/template.rb ~~
