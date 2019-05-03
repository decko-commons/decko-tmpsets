# -*- encoding : utf-8 -*-
class Card; module Set; class Type
module Scss;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/machines/set/type/scss.rb"; end
include_set Type::Css

format do
  view :core, cache: :never do
    compile_scss(process_content(_render_raw))
  end

  def compile_scss scss, style=:expanded
    SassC::Engine.new(scss, style: style).render
  rescue SassC::SyntaxError => e
    raise Card::Error, "SassC::SyntaxError (#{card.name}:#{e.sass_line}):" \
                       "#{scss.lines[e.sass_line - 1]}\n" \
                       "#{e.message}"
  end
end

format :html do
  def ace_mode
    :scss
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/machines/set/type/scss.rb ~~
