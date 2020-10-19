# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (PagingParams)
#
module PagingParams;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/00_paging_params.rb"; end
MAX_ANONYMOUS_SEARCH_PARAM = 1000

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
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
    return unless focal? && Env.params[param].present?

    legal_search_param! param, Env.params[param].to_i
  end

  def legal_search_param! param, val
    return val if Card::Auth.signed_in? || val <= MAX_ANONYMOUS_SEARCH_PARAM

    raise Card::Error::PermissionDenied, "#{param} parameter exceeds maximum"
  end

  def voo_search_param param
    voo&.cql&.dig param
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/pointer/set/abstract/00_paging_params.rb ~~
