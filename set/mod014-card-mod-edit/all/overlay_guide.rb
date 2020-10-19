# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (OverlayGuide)
#
module OverlayGuide;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-edit/set/all/overlay_guide.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :overlay_guide,
       cache: :never, unknown: true, template: :haml,
       wrap: { slot: { class: "_overlay d0-card-overlay card nodblclick" } } do
    # TODO: use a common template for this and the nest editor
    # (the common thing is that they both are an overlay of the bridge sidebar)
    #  and maybe make it look more like the overlay on the left with the same close icon
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-edit/set/all/overlay_guide.rb ~~
