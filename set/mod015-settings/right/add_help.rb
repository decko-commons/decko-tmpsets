# -*- encoding : utf-8 -*-
class Card; module Set; class Right
module AddHelp;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/settings/set/right/add_help.rb"; end
format :html do
  view :core do
    with_nest_mode :template do
      super()
    end
  end

  view :closed_content do
    "#{_render_type} : #{_render_raw}"
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/settings/set/right/add_help.rb ~~
