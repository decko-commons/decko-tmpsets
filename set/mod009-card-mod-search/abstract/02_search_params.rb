# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (SearchParams)
#
module SearchParams;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-search/set/abstract/02_search_params.rb"; end
include_set Abstract::PagingParams

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  def offset
    search_params[:offset] || 0
  end

  def search_params
    @search_params ||= default_search_params
  end

  # used for override
  def default_search_params
    if (qparams = query_params)
      paging_params.merge vars: qparams
    else
      paging_params
    end
  end

  def paging_params
    { limit: limit_param, offset: offset_param }
  end

  def query_params
    return nil unless (vars = params[:query])

    Env.hash vars
  end

  def default_limit
    100
  end

  def extra_paging_path_args
    return {} unless (vars = query_params)

    { query: vars }
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def default_limit
    Cardio.config.paging_limit || 20
  end
end

module JsonFormat; module_parent.send :register_set_format, Card::Format::JsonFormat, self; extend Card::Set::AbstractFormat
  def default_limit
    20
  end
end

module RssFormat; module_parent.send :register_set_format, Card::Format::RssFormat, self; extend Card::Set::AbstractFormat
  def default_limit
    25
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-search/set/abstract/02_search_params.rb ~~
