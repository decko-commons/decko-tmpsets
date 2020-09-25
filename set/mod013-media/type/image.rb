# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Image" cards
#
module Image;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/media/set/type/image.rb"; end
IMAGE_BOX_SIZE_MAP = {
  icon: :icon, small: :small, medium: :small, large: :medium, xlarge: :medium
}.freeze

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :boxed, unknown: true do
    image_box { |size| render_core size: size }
  end

  view :boxed_link, unknown: true do
    image_box { |size| link_to_card image_box_link_target, render_core(size: size) }
  end

  def image_box
    voo.size ||= :medium
    wrap_with :div, title: image_box_title, class: "image-box #{voo.size}" do
      yield image_box_size
    end
  end

  ## METHODS FOR OVERRIDE

  def image_box_size
    IMAGE_BOX_SIZE_MAP[voo.size.to_sym] || :medium
  end

  def image_box_card_name
    card.name.junction? ? card.name.left : card.name
  end

  def image_box_link_target
    image_box_card_name
  end

  def image_box_title
    voo.title || image_box_card_name
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/media/set/type/image.rb ~~
