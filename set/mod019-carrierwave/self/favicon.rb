# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module Favicon;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/carrierwave/set/self/favicon.rb"; end
format :html do
  view :source do
    source = card.type_id == Card::ImageID ? super() : nil
    source.present? ? source : nest(:logo, view: :source, size: voo.size)
  end

  view :link_tag, perms: :none do
    return unless (source = render :source, size: :small)
    tag :link, rel: "shortcut icon", href: source
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/carrierwave/set/self/favicon.rb ~~
