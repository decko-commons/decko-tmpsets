# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
module Utility;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/utility/set/abstract/utility.rb"; end

def fetch_params params
  Env.params.select { |key, val| val && params.include?(key) }
     .with_indifferent_access
end

def param_to_i key, default
  if (value = Env.params[key])
    value.to_i
  else
    default
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/utility/set/abstract/utility.rb ~~
