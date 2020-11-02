# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Pointer" cards
#
module Pointer;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-edit/set/type/pointer.rb"; end
def show_content_options?
  true
end

def show_input_type?
  true
end

def input_type_content_options
  %w[select radio autocomplete]
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-edit/set/type/pointer.rb ~~
