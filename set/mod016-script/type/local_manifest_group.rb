# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "LocalManifestGroup" cards
#
module LocalManifestGroup;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/script/set/type/local_manifest_group.rb"; end
include_set Abstract::AssetList
include_set Abstract::ManifestGroup

def paths
  return [] unless left

  relative_paths.map { |path|  ::File.join(base_path, path) } || []
end

def relative_paths
  return [] unless left

  left.manifest_group_items group_name
end

def item_name_to_path name
  ::File.join base_path, name
end

def minimize?
  left.manifest_group_minimize? group_name
end

def base_path
  left&.assets_path
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/script/set/type/local_manifest_group.rb ~~
