# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (TemplatedNests)
#
module TemplatedNests;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/abstract/templated_nests.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core do
    with_nest_mode :template do
      super()
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/abstract/templated_nests.rb ~~
