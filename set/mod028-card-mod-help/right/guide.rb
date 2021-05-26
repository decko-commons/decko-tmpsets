# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Guide" cards
#
# include_set Abstract::TemplatedNests
module Guide;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/help/set/right/guide.rb"; end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def raw_help_text
    # LOCALIZE
    "Appears in the full editor view to guide users."
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/help/set/right/guide.rb ~~
