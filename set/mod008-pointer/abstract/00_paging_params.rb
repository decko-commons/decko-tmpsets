# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
module PagingParams;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/00_paging_params.rb"; end
format do
  def limit_param
    @limit ||= contextual_param(:limit) || default_limit
  end

  def offset_param
    @offset ||= contextual_param(:offset) || 0
  end

  def contextual_param param
    env_search_param(param) || voo_search_param(param)
  end

  def env_search_param param
    return unless focal?

    val = Env.params[param]
    val.present? && val.to_i
  end

  def voo_search_param param
    return unless voo&.wql

    voo.wql[param]
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/00_paging_params.rb ~~
