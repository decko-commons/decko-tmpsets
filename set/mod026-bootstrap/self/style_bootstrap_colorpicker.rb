# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "StyleBootstrapColorpicker"
module StyleBootstrapColorpicker;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/bootstrap/set/self/style_bootstrap_colorpicker.rb"; end
include_set Abstract::BootstrapCodeFile
Self::StyleLibraries.add_item :style_bootstrap_colorpicker

def load_stylesheets
  add_stylesheet_file "vendor/bootstrap-colorpicker/src/sass/_colorpicker.scss"
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/bootstrap/set/self/style_bootstrap_colorpicker.rb ~~
