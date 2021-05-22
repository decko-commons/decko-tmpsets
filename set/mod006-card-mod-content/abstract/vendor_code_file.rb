# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (VendorCodeFile)
#
module VendorCodeFile;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/content/set/abstract/vendor_code_file.rb"; end
include_set Abstract::CodeFile

def self.included host_class
  Abstract::CodeFile.track_mod_name host_class, caller
end

def source_dir
  "vendor"
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/content/set/abstract/vendor_code_file.rb ~~
