# -*- encoding : utf-8 -*-
class Card; module Set; class Type; module Set;; module HtmlViews;
# Set: All "Set+HtmlViews" cards (HtmlViews, Template)
#
module Template;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-rules/set/type/set/html_views/template.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :template_link, cache: :never do
    wrap do
      voo.title = parent.voo.nest_syntax if parent
      "{{#{link_to_template_editor}}}"
    end
  end

  def link_to_template_editor
    link_to_view :modal_nest_rules, voo.title
  end
end
end;end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-rules/set/type/set/html_views/template.rb ~~
