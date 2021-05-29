# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (AssetList)
#
module AssetList;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/script/set/abstract/asset_list.rb"; end
include_set Abstract::Machine
include_set Abstract::MachineInput
include_set Abstract::ReadOnly
include_set Abstract::Sources
include_set Abstract::Items

machine_input { standard_machine_input }
store_machine_output filetype: "js"

def update_if_source_file_changed
  return unless !output_updated_at || source_changed?(since: output_updated_at)

  update_items!
end

event :update_asset_list, :prepare_to_store, on: :save do
  self.db_content = relative_paths.join("\n")
end

def update_items!
  Card::Auth.as_bot do
    save!
  end
  regenerate_machine_output
end

def item_name_to_path name
  name
end

def fetch_item_card name, _args={}
  new_asset_file_card item_name_to_path(name)
end

def new_asset_file_card path, name = ::File.basename(path)
  if path.ends_with? ".js.coffee"
    type_id = Card::CoffeeScriptID
    set_module = ::Card::Set::Abstract::AssetCoffeeScript
  elsif path.ends_with? ".js"
    type_id = Card::JavaScriptID
    set_module = ::Card::Set::Abstract::AssetJavaScript
  else
    return
  end
  asset_card = Card.new name: name,
                        type_id: type_id,
                        content: path

  asset_card.include_set_module set_module
  asset_card.minimize if @minimize
  asset_card.local if @local
  asset_card
end

def source_paths
  paths
end

def self_machine_input?
  true
end

def local
  @local = true
end

def minimize?
  @minimize = true
end

def standard_machine_input
  item_cards.map do |mcard|
    js = mcard.format(:js)._render_core
    js = mcard.compress_js js if minimize?
    "// #{mcard.name}\n#{js}"
  end.join "\n"
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :javascript_include_tag do
    javascript_include_tag card.machine_output_url
  end
end

def source_changed? since:
  difference = (relative_paths + item_names) - (relative_paths & item_names)
  difference.present? ||
    existing_source_paths.any? { |path| ::File.mtime(path) > since }
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/script/set/abstract/asset_list.rb ~~
