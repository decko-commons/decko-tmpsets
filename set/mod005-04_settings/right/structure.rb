# -*- encoding : utf-8 -*-
class Card; module Set; module Right; module Structure; extend Card::Set # ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/04_settings/set/right/structure.rb ~~~~~~~~~~~

format :rss do
  def raw_feed_items args
    [card]
  end
end

format :html do
  include AddHelp::HtmlFormat

  view :core do |args|
    render_raw args
  end

end


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/04_settings/set/right/structure.rb ~~~~~~~~~~~
end;end;end;end;
