# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module Date; extend Card::Set
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/standard/set/type/date.rb ~~

format :html do
  # what is this for?  Can't you just use TYPE-date and editor
  # to match this cas, no special view needed?
  view :editor do |_args|
    text_field :content, class: "date-editor"
  end
end


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/standard/set/type/date.rb ~~
end;end;end;end;
