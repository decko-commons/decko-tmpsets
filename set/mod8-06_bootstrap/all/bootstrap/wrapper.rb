# -*- encoding : utf-8 -*-
class Card; module Set; module All; module Bootstrap; module Wrapper; extend Card::Set # ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/06_bootstrap/set/all/bootstrap/wrapper.rb ~~~~~~~~~~~
format :html do

  def frame args={}, &block
    args.reverse_merge!(
      :panel_class  => 'panel panel-default',
      :header_class => 'panel-heading',
      :title_class  => 'panel-title',
      :body_class   => 'panel-body'
    )
    super args
  end
end


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/06_bootstrap/set/all/bootstrap/wrapper.rb ~~~~~~~~~~~
end;end;end;end;end;
