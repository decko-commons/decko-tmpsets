# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Json" cards
#
# include_set Abstract::Pointer
module Json;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-format/set/type/json.rb"; end

event :validate_json, :validate, on: :save, changed: :content do
  check_json_syntax if content.present?
end

def check_json_syntax
  parse_content
rescue JSON::ParserError => e
  errors.add tr(:invalid_json), e.message.sub(/^\d+: /, "").to_s
end

def parse_content
  JSON.parse content
end

def item_names _args={}
  parse_content.keys.map(&:to_name)
end

def item_values
  parse_content.values
end

def item_value name
  parse_content[name]
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    process_content ::CodeRay.scan(_render_raw, :json).div
  end

  def input_type
    :ace_editor
  end

  def ace_mode
    :json
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-format/set/type/json.rb ~~
