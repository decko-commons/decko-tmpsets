# -*- encoding : utf-8 -*-
class Card; module Set; class Self; module Now; extend Card::Set
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/standard/set/self/now.rb ~~

view :raw do |_args|
  # '%A, %B %d, %Y %I:%M %p %Z'
  I18n.localize(Time.now, format: :card_dayofwk_min_tz)
end

view :core, :raw


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/standard/set/self/now.rb ~~
end;end;end;end;
