# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Json" cards
module Json;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/basic_types/set/type/json.rb"; end
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
  parse_content.keys
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    process_content ::CodeRay.scan(_render_raw, :json).div
  end

  def editor
    :ace_editor
  end

  def ace_mode
    :json
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/basic_types/set/type/json.rb ~~
