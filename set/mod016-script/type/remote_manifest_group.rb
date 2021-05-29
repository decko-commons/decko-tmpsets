# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "RemoteManifestGroup" cards
#
module RemoteManifestGroup;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/script/set/type/remote_manifest_group.rb"; end
include_set Abstract::ReadOnly
include_set Abstract::ManifestGroup

def local?
  @local = false
end

def minimize?
  @minimize = false
end

def paths
  return [] unless left

  left.manifest_group_items group_name
end

def item_names _content=nil
  paths
end

def content
  paths.join "\n"
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :javascript_include_tag do
    paths.map do |path|
      javascript_include_tag path
    end.join("\n")
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/script/set/type/remote_manifest_group.rb ~~
