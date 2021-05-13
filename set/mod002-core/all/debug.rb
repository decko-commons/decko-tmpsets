# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Debug)
#
module Debug;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/debug.rb"; end
def to_s
  "#<#{self.class.name}[#{debug_type}]#{attributes['name']}>"
end

def inspect
  error_messages = errors.any? ? "<E*#{errors.full_messages * ', '}*>" : ""
  "#<Card##{id}[#{debug_type}](#{name})#{error_messages}{#{inspect_tags * ','}}"
end

private

def inspect_tags
  # trash
  %w[new frozen readonly virtual set_mods_loaded].map do |tag|
    tag if send "#{tag}?"
  end.compact
end

def debug_type
  "#{type_code || ''}:#{type_id}"
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/debug.rb ~~
