# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Demo)
#
module Demo;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/format/set/all/demo.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :demo do
    frame do
      [view_select, wrap_with(:div, view_demo, class: "demo-slot")]
    end
  end

  view :view_list do
    %i[bar box info_bar open closed titled labeled content content_panel].map do |v|
      wrap_with :p, [content_tag(:h3, v), render(v, show: :menu)]
    end.flatten.join ""
  end

  def demo_view
    Env.params[:demo_view] || :core
  end

  def view_demo
    wrap(true) do
      render demo_view
    end
  end

  def view_select
    card_form :get, success: { view: :demo } do
      select_tag :demo_view,
                 options_for_select(all_views, demo_view),
                 class: "_submit-on-select"
    end
  end

  def all_views
    Card::Set::Format::AbstractFormat::ViewDefinition
      .views.slice(*self.class.ancestors).values.map(&:keys).flatten.uniq
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/format/set/all/demo.rb ~~
