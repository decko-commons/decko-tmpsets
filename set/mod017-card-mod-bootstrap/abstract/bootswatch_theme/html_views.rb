# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module BootswatchTheme;
# Set: Abstract (BootswatchTheme, HtmlViews)
#
module HtmlViews;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-bootstrap/set/abstract/bootswatch_theme/html_views.rb"; end
include_set Abstract::Media
include_set Abstract::BsBadge

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  before :box do
    voo.show! :customize_button, :box_middle
  end

  view :one_line_content do
    ""
  end

  view :bar_left do
    class_up "card-title", "my-0 ml-2"
    class_up "media-left", "m-0"
    text_with_image size: :medium, title: "", text: _render_title,
                    media_opts: { class: "align-items-center" }
    # field_nest(:image, view: :core) + wrap_with(:h4, render(:title))
  end

  view :bar_right do
    customize_button text: "Customize"
  end

  view :bar_bottom do
    wrap_with :code do
      render_core
    end
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-bootstrap/set/abstract/bootswatch_theme/html_views.rb ~~
