# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Navbox"
#
module Navbox;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/search/set/self/navbox.rb"; end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :raw do
    wrap_with :div, class: "form-group w-100" do
      select_tag "query[keyword]", "", class: "_navbox navbox form-control w-100",
                                       placeholder: navbar_placeholder
    end
  end

  # TODO: the more natural placeholder would be the content of the navbox card, no?
  # Also, the forced division of "raw" and "core" should probably be replaced
  # with a single haml template (for core view)
  def navbar_placeholder
    @@placeholder ||= begin
      holder_card = Card["#{Card[:navbox].name}+*placeholder"]
      holder_card ? holder_card.content : "Search"
    end
  end

  view :navbar do
    class_up "navbox-form", "form-inline col-md-6"
    _render_core
  end

  view :core do
    form_tag path(mark: :search),
             method: "get", role: "search",
             class: classy("navbox-form", "nodblclick") do
      _render_raw
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/search/set/self/navbox.rb ~~
