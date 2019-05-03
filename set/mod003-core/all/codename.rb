# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Codename)
#
module Codename;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/codename.rb"; end
def codename
  super&.to_sym
end

event :validate_codename, :validate, on: :update, changed: :codename do
  validate_codename_permission
  validate_codename_uniqueness
end

event :reset_codename_cache, :integrate, changed: :codename do
  return if @action == :create && codename.nil?

  Card::Codename.reset_cache
end

private

def validate_codename_permission
  return if Auth.always_ok?
  errors.add :codename, tr(:only_admins_codename)
end

def validate_codename_uniqueness
  return (self.codename = nil) if codename.blank?
  return if errors.present? || !Card.find_by_codename(codename)
  errors.add :codename, tr(:error_code_in_use, codename: codename)
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/codename.rb ~~
