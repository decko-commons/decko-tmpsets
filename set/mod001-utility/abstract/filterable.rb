# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Filterable)
#
module Filterable;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/utility/set/abstract/filterable.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def filterable filter_hash={}, html_opts={}
    add_class html_opts, "_filterable _noFilterUrlUpdates"
    html_opts[:data] ||= {}
    html_opts[:data][:filter] = filter_hash
    wrap_with :div, yield, html_opts
  end

  def filtering selector=nil
    selector ||= "._filter-widget:visible"
    wrap_with :div, yield, class: "_filtering", "data-filter-selector": selector
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/utility/set/abstract/filterable.rb ~~
