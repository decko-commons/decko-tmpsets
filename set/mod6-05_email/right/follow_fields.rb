# -*- encoding : utf-8 -*-
class Card; module Set; module Right; module FollowFields; extend Card::Set # ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/05_email/set/right/follow_fields.rb ~~~~~~~~~~~
event :follow_fields_changed, :before=>:extend do
  Card.follow_caches_expired
end

# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/05_email/set/right/follow_fields.rb ~~~~~~~~~~~
end;end;end;end;
