# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (ReadOnly)
#
module ReadOnly;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/content/set/abstract/read_only.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :input do
    "Content can't be edited."
  end

  def short_content
    fa_icon("exclamation-circle", class: "text-muted pr-2") +
      wrap_with(:span, "read-only", class: "text-muted")
  end

  def standard_submit_button
    multi_card_editor? ? super : ""
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/content/set/abstract/read_only.rb ~~
