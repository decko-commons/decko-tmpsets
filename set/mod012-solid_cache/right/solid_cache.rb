# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+SolidCache" cards
module SolidCache;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/solid_cache/set/right/solid_cache.rb"; end
include_set Abstract::Lock

def followable?
  false
end

def history?
  false
end

def clean_html?
  false
end

def write! new_content
  lock do
    if new_card?
      update! content: new_content
    elsif new_content != solid_cache_card.content
      update_column :db_content, new_content
      expire
    end
  end
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :core, cache: :never do
    return super() unless card.new_card?
    @denied_view = :core
    _render_missing
  end

  view :missing, cache: :never do
    if @card.new_card? && (l = @card.left) && l.solid_cache?
      l.update_solid_cache
      @card = Card.fetch card.name
      render! @denied_view
    else
      super()
    end
  end

  view :new, :missing
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/solid_cache/set/right/solid_cache.rb ~~
