# -*- encoding : utf-8 -*-
class Card; module Set; class Type
module Uri;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/type/uri.rb"; end
format do
  view :core do
    link_to_resource _render_raw, render_title
  end

  view :url_link do
    link_to_resource _render_raw
  end
end

format :html do
  def editor
    :text_field
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/type/uri.rb ~~
