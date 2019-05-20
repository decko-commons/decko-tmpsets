# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Script" cards
#
module Script;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/right/script.rb"; end
include_set Abstract::Machine

store_machine_output filetype: "js"

def ok_to_read
  true
end

view :javascript_include_tag do
  %(
    <script src="#{card.machine_output_url}" type="text/javascript"></script>
  )
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/right/script.rb ~~
