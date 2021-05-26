# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Discussion" cards
#
module Discussion;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/comment/set/right/discussion.rb"; end
view :titled, unknown: true do
  voo.show :comment_box
  super()
end

view :open, unknown: true do
  voo.show :comment_box
  super()
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/comment/set/right/discussion.rb ~~
