# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "List" cards
#
module List;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/edit/set/type/list.rb"; end
def input_type_content_options
  ["multiselect", "checkbox", "autocompleted list", "filtered list"]
end

def show_content_options?
  true
end

def show_input_type?
  true
end

def field_settings
  %i[default help input_type content_options content_option_view]
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/edit/set/type/list.rb ~~
