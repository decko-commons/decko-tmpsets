# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (SupportsContentOptions)
#
module SupportsContentOptions;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-list/set/all/supports_content_options.rb"; end
def supports_content_options?
  false
end

def supports_content_option_view?
  false
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-list/set/all/supports_content_options.rb ~~
