# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "NewImage"
#
module NewImage;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-carrierwave/set/self/new_image.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :source, cache: :never do
    super()
  end

  view :core, cache: :never do
    super()
  end

  view :input, cache: :never do
    super()
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-carrierwave/set/self/new_image.rb ~~
