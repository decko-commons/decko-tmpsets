# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (I18n)
#
module I18n;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/i18n.rb"; end
def tr key, args={}
  args[:scope] ||= Card::Set.scope(caller)
  ::I18n.t key, args
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def tr key, args={}
    args[:scope] ||= Card::Set.scope(caller)
    ::I18n.t key, args
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/i18n.rb ~~
