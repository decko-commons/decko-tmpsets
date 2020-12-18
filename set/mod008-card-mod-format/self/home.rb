# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Home"
#
module Home;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-format/set/self/home.rb"; end
module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :home_url, perms: :none do
    card_url ""
  end

  view :home_path, perms: :none do
    card_path ""
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-format/set/self/home.rb ~~
