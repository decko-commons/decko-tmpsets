# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ScriptDatepicker"
#
module ScriptDatepicker;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/date/set/self/script_datepicker.rb"; end
include_set Abstract::VendorCodeFile
Self::ScriptMods.add_item :script_datepicker

def source_files
  %w[moment/min/moment-with-locales.min.js
     tempusdominus/build/js/tempusdominus-bootstrap-4.js]
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/date/set/self/script_datepicker.rb ~~
