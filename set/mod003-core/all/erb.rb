# -*- encoding : utf-8 -*-
class Card; module Set; class All
module Erb;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/erb.rb"; end
format do
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
