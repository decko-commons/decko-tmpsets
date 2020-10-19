# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Html" cards
#
module Html;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/navbar/set/type/html.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  # deprecated; here to support old "*main menu" html cards in existing decks
  view :navbar_links, perms: :none do
    wrap_with :ul, class: "navbar-nav" do
      item_links.map do |link|
        wrap_with(:li, class: "nav-item") { link }
      end.join "\n"
    end
  end

  def item_links _args={}
    raw(render_core).split(/[,\n]/)
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/navbar/set/type/html.rb ~~
