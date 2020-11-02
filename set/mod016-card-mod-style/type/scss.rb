# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Scss" cards
#
module Scss;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-style/set/type/scss.rb"; end
include_set Type::Css

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :core, cache: :never do
    compile_scss(process_content(_render_raw))
  end

  def compile_scss scss, style=:expanded
    SassC::Engine.new(scss, style: style).render
  rescue SassC::SyntaxError => e
    raise Card::Error,
          "SassC::SyntaxError (#{card.name}:#{e.sass_backtrace}): #{e.message}"
    # "#{#scss.lines[e.sass_line - 1]}\n" \
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def ace_mode
    :scss
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-style/set/type/scss.rb ~~
