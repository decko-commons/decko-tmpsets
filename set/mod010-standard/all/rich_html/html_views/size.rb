# -*- encoding : utf-8 -*-
class Card; module Set; class All; module RichHtml;; module HtmlViews;
# Set: All cards (RichHtml, HtmlViews, Size)
#
module Size;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/standard/set/all/rich_html/html_views/size.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  SIZE_IN_PX = { icon: 16, small: 75, medium: 200, large: 500 }.freeze

  # used to control size of svg
  view :max_size do
    if voo.size.is_a?(String) && voo.size.match(/^\d+x\d+\$/)
      max_size(*voo.size.split("x"))
    else
      px = SIZE_IN_PX[voo.size&.to_sym] || 200
      max_size px, px
    end
  end

  def max_size w, h
    "max-width: #{w}px; max-height: #{h}px"
  end
end
end;end;end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/standard/set/all/rich_html/html_views/size.rb ~~
