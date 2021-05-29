# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Initialize)
#
module Initialize;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/core/set/all/initialize.rb"; end
JUNK_INIT_ARGS = %i[missing skip_virtual id].freeze

module ClassMethods
  def new args={}, _options={}
    with_normalized_new_args args do |normalized_args|
      super normalized_args
    end
  end

  def with_normalized_new_args args={}
    args = (args || {}).symbolize_keys
    delete_junk_args args
    normalize_type_args args
    normalize_content_args args
    yield args
  end

  private

  def delete_junk_args args
    JUNK_INIT_ARGS.each { |a| args.delete(a) }
  end

  def normalize_type_args args
    %i[type type_code].each { |k| args.delete(k) if args[k].blank? }
  end

  def normalize_content_args args
    args.delete(:content) if args[:attach] # should not be handled here!
    args[:db_content] = args.delete :content if args[:content]
  end
end

def initialize args={}
  args[:name] = initial_name args[:name]

  handle_set_modules args do
    handle_type args do
      super args # ActiveRecord #initialize
    end
  end
  self
end

def handle_set_modules args
  skip_modules = args.delete :skip_modules
  yield
  include_set_modules unless skip_modules
end

def handle_type args
  type_lookup = args[:type_lookup]
  @supercard = args.delete :supercard

  yield
  type_id_from_template if type_lookup == :force || (!type_id && type_lookup != :skip)
end

def initial_name name
  name.is_a?(String) ? name : Card::Name[name].to_s
end

def include_set_modules
  return self if @set_mods_loaded

  set_modules.each do |m|
    include_set_module m
  end
  assign_set_specific_attributes
  @uncacheable = @set_mods_loaded = true
  self
end

def include_set_module m
  singleton_class.send :include, m
end

def set_mods_loaded?
  @set_mods_loaded == true
end

def uncacheable?
  @uncacheable == true
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/core/set/all/initialize.rb ~~
