# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Attachment;
# Set: Abstract (Attachment, Coded)
#
module Coded;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-carrierwave/set/abstract/attachment/coded.rb"; end
event :lose_coded_status_on_update, :initialize, on: :update, when: :coded? do
  # unless explicit
  return if @new_mod
  @new_storage_type ||= storage_type_from_config
end

event :validate_coded_storage_type, :validate, on: :save, when: :will_become_coded? do
  errors.add :storage_type, tr(:mod_argument_needed_to_save) unless mod || @new_mod
  errors.add :storage_type, tr(:codename_needed_for_storage) if codename.blank?
end

def will_become_coded?
  will_be_stored_as == :coded
end

def mod= value
  if @action == :update && mod != value
    @new_mod = value.to_s
  else
    @mod = value.to_s
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-carrierwave/set/abstract/attachment/coded.rb ~~
