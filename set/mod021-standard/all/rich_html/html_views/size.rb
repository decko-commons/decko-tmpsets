# -*- encoding : utf-8 -*-
class Card; module Set; class All; module RichHtml;; module HtmlViews;
module Size;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/html_views/size.rb"; end
format :html do
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
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/html_views/size.rb ~~
