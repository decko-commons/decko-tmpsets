# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module StyleSelect2;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/bootstrap/set/self/style_select2.rb"; end
include_set Abstract::CodeFile
Self::StyleLibraries.add_item :style_select2

def source_files
  ["vendor/select2/dist/css/select2.css", "lib/stylesheets/style_select2_bootstrap.scss"]
end

def source_dir
  ""
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/bootstrap/set/self/style_select2.rb ~~
