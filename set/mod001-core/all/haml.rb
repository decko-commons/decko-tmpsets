# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Haml; extend Card::Set
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set/all/haml.rb ~~
format do
  def render_haml locals={}, template=nil, a_binding=nil, &block
    template ||= yield
    a_binding ||= binding
    ::Haml::Engine.new(template).render(a_binding, locals)
  end
end


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/core/set/all/haml.rb ~~
end;end;end;end;
