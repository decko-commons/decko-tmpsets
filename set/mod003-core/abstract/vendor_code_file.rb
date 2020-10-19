# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (VendorCodeFile)
#
module VendorCodeFile;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/core/set/abstract/vendor_code_file.rb"; end
include_set Abstract::CodeFile

def self.included host_class
  host_class.mattr_accessor :file_content_mod_name
  host_class.file_content_mod_name = Card::Set.mod_name(caller)
end

def source_dir
  "vendor"
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/core/set/abstract/vendor_code_file.rb ~~
