# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Attachment;
# Set: Abstract (Attachment, Web)
#
module Web;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/carrierwave/set/abstract/attachment/web.rb"; end
def no_upload?
  web? || storage_type_from_config == :web
end
end;end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/carrierwave/set/abstract/attachment/web.rb ~~
