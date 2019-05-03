# -*- encoding : utf-8 -*-
class Card; module Set; class Right
module Default;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/right/default.rb"; end
format :html do
  include AddHelp::HtmlFormat

  def quick_editor
    wrap_type_formgroup do
      type_field class: "type-field rule-type-field _submit-on-select"
    end
  end
end

def empty_ok?
  true
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/right/default.rb ~~
