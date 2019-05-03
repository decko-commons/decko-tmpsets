# -*- encoding : utf-8 -*-
class Card; module Set; class All
module RichHtml;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html.rb"; end
format :html do
  delegate :class_up, :class_down, :with_class_up, :without_upped_class, :classy,
           to: :voo
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html.rb ~~
