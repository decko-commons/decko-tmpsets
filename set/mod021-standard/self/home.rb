# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module Home;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/self/home.rb"; end
format do
  view :home_url, perms: :none do
    card_url ""
  end

  view :home_path, perms: :none do
    card_path ""
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/self/home.rb ~~
