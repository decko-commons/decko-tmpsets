# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Filterable)
#
module Filterable;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/utility/set/abstract/filterable.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def filterable key, value, opts={}
    add_class opts, "filterable"
    opts[:data] ||= {}
    opts[:data].merge! filter_data(key, value)
    wrap_with :div, yield, opts
  end

  def filter_data key, value
    { filter: { key: key, value: value } }
  end

  def filtering
    wrap_with :div, yield, class: "filtering"
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/utility/set/abstract/filterable.rb ~~
