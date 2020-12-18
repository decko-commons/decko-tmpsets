# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Version"
#
# -*- encoding : utf-8 -*-

module Version;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/self/version.rb"; end
# require "card/version"

def ok_to_read
  true
end

def content
  Card::Version.release
end

# view :core, :raw
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/self/version.rb ~~
