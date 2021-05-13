# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Lock)
#
module Lock;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-content/set/abstract/lock.rb"; end
def lock
  was_already_locked = locked?
  return if was_already_locked

  Auth.as_bot do
    lock!
    yield
  end
ensure
  unlock! unless was_already_locked
end

def lock_cache_key
  "UPDATE-LOCK:#{key}"
end

def locked?
  Card.cache.read lock_cache_key
end

def lock!
  Card.cache.write lock_cache_key, true
end

def unlock!
  Card.cache.write lock_cache_key, false
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-content/set/abstract/lock.rb ~~
