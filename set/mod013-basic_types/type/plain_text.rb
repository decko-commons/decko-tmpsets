# -*- encoding : utf-8 -*-
class Card; module Set; class Type
module PlainText;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/basic_types/set/type/plain_text.rb"; end
format :html do
  def editor
    :text_area
  end

  view :core do
    process_content CGI.escapeHTML(_render_raw)
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/basic_types/set/type/plain_text.rb ~~
