# -*- encoding : utf-8 -*-
class Card; module Set; class All
module I18n;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/i18n.rb"; end

def tr key, args={}
  ::I18n.t key, args.reverse_merge(scope: Card::Set.scope(caller))
end

format do
  def tr key, args={}
    ::I18n.t key, args.reverse_merge(scope: Card::Set.scope(caller))
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/i18n.rb ~~
