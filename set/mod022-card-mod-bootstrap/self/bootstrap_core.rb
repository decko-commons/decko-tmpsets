# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "BootstrapCore"
#
module BootstrapCore;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-bootstrap/set/self/bootstrap_core.rb"; end
include_set Abstract::BootstrapCodeFile

def load_stylesheets
  add_bs_stylesheet "variables"
  add_bs_subdir "mixins"
  %w[
    print reboot type images code grid tables forms buttons transitions dropdown
    button-group input-group custom-forms nav navbar card breadcrumb pagination badge
    jumbotron alert progress media list-group close modal tooltip popover carousel
  ].each do |name|
    add_bs_stylesheet name
  end
  add_bs_subdir "utilities"
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-bootstrap/set/self/bootstrap_core.rb ~~
