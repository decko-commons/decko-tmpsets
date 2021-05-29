# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (ManifestGroup)
#
module ManifestGroup;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/script/set/abstract/manifest_group.rb"; end
def group_name
  codename.to_s.sub(/^.+__/, "")
end

def relative_paths
  paths
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    list_group card.item_names
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/script/set/abstract/manifest_group.rb ~~
