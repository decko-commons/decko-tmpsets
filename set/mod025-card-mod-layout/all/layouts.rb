# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Layouts)
#
module Layouts;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-layout/set/all/layouts.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  attr_reader :interior

  def layout_nest
    wrap_main { interior }
  end

  layout :pre do  # {{_main|raw}}
    wrap_with :pre do
      layout_nest
    end
  end

  layout :simple do
    layout_nest
  end

  layout :no_side do # {{_main|open}}
    <<-HTML.strip_heredoc
      <header>#{nest :header, view: :core}</header>
      <article>#{layout_nest}</article>
      <footer>{nest :footer, view: :core}</footer>
    HTML
  end

  layout :default do
    <<-HTML.strip_heredoc
      <header>#{nest :header, view: :core}</header>
      <article>#{layout_nest}</article>
      <aside>#{nest :sidebar, view: :core}</aside>
      <footer>{nest :footer, view: :core}</footer>
    HTML
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-layout/set/all/layouts.rb ~~
