# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module CustomizedBootswatchSkin;
# Set: All "CustomizedBootswatchSkin+HtmlViews" cards (HtmlViews)
#
module HtmlViews;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/bootstrap/set/type/customized_bootswatch_skin/html_views.rb"; end
include_set Abstract::Media
include_set Abstract::BsBadge

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :menu do
    ""
  end

  def short_content
    ""
    # labeled_badge card.item_count, "items"
    # "#{card.item_count} items"
  end

  view :core, template: :haml

  info_bar_cols 6, 3, 3

  before :bar do
    super()
    voo.show :edit_button, :bar_middle
    class_up "bar-middle", "p-3 align-items-center p-0"
  end

  view :bar_right do
    render(:short_content)
  end

  before :bar_nav do
    voo.hide :edit_link
  end

  view :bar_bottom do
    render_core
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/bootstrap/set/type/customized_bootswatch_skin/html_views.rb ~~
