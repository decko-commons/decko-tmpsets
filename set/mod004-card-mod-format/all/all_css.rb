# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (AllCss)
#
module AllCss;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-format/set/all/all_css.rb"; end

module CssFormat; module_parent.send :register_set_format, Card::Format::CssFormat, self; extend Card::Set::AbstractFormat
  def default_nest_view
    :raw
  end

  def show view, args
    view ||= :content
    render! view, args
  end

  view :titled do
    major_comment(%( Style Card: \\"#{card.name}\\" )) + _render_core
  end

  view :content do
    _render_core
  end

  view :unknown do
    major_comment "MISSING Style Card: #{card.name}"
  end

  view :import do
    _render_core
  end

  view :url, perms: :none do
    path mark: card.name, format: :css
  end

  def major_comment comment, char="-"
    edge = %(/* #{char * (comment.length + 4)} */)
    main = %(/* #{char} #{comment} #{char} */)
    "#{edge}\n#{main}\n#{edge}\n\n"
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-format/set/all/all_css.rb ~~
