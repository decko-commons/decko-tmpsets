# -*- encoding : utf-8 -*-
class Card; module Set; module Right; module WhenCreated; extend Card::Set # ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/05_standard/set/right/when_created.rb ~~~~~~~~~~~
view :raw do |args|
  card.left.new_card? ? '' : card.left.created_at.strftime('%A, %B %d, %Y %I:%M %p %Z')
end

view :core, :raw


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/05_standard/set/right/when_created.rb ~~~~~~~~~~~
end;end;end;end;
