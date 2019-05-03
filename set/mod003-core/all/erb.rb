# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Erb)
#
module Erb;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/erb.rb"; end
module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def render_erb locals={}, template=nil, a_binding=nil, &block
    template ||= yield
    a_binding ||= binding
    locals.each do |k, v|
      # a_binding.local_variable_set(k, v) # needs ruby 2.1
      instance_variable_set("@#{k}", v)
    end
    ERB.new(template, nil, "-").result(binding)
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/erb.rb ~~
