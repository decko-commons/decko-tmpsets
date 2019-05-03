# -*- encoding : utf-8 -*-
class Card; module Set; class Type
module Html;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/basic_types/set/type/html.rb"; end
def clean_html?
  false
end

def diff_args
  { diff_format: :raw }
end

format do
  view :closed_content do
    ""
  end

  def chunk_list
    :references
  end
end

format :html do
  def editor
    :ace_editor
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/basic_types/set/type/html.rb ~~
