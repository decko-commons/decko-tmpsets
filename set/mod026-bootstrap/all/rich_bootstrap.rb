# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards
module RichBootstrap;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/bootstrap/set/all/rich_bootstrap.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :closed do
    class_up "d0-card-body", "closed-content"
    super()
  end

  include Bootstrapper
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/bootstrap/set/all/rich_bootstrap.rb ~~
