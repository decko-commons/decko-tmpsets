# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Head" cards
#
module Head;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-layout/set/right/head.rb"; end
def ok_to_read
  true
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :head_content do
    process_content render_raw
  end

  view :one_line_content do
    raw_one_line_content
  end

  view :core do
    process_content ::CodeRay.scan(render_raw, :html).div
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-layout/set/right/head.rb ~~
