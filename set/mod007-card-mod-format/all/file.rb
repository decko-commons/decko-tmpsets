# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (File)
#
module File;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/format/set/all/file.rb"; end
module FileFormat; module_parent.send :register_set_format, Card::Format::FileFormat, self; extend Card::Set::AbstractFormat
  view :core do
    "File rendering of this card not yet supported"
  end

  view :style do
    nil
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/format/set/all/file.rb ~~
