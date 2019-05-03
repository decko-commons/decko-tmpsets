# -*- encoding : utf-8 -*-
class Card; module Set; class All
module RichBootstrap;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/bootstrap/set/all/rich_bootstrap.rb"; end
format :html do
  view :closed do
    class_up "d0-card-body", "closed-content"
    super()
  end

  include Bootstrapper
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/bootstrap/set/all/rich_bootstrap.rb ~~
