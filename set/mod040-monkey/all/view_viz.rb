# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (ViewViz)
#
module ViewViz;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/monkey/set/all/view_viz.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :views_by_format do
    format_views =
      self.class.ancestors.each_with_object({}) do |format_class, hash|
        views =
          format_class.instance_methods.map do |method|
            next unless method.to_s =~ /^_view_(.+)$/

            Regexp.last_match(1)
          end.compact
        next unless  views.present?

        format_class.name =~ /^Card(::Set)?::(.+?)$/ #::(\w+Format)
        hash[Regexp.last_match(2)] = views
      end
    accordion_group format_views
  end

  view :views_by_name do
    views = methods.map do |method|
      Regexp.last_match(1) if method.to_s.match?(/^_view_(.+)$/)
    end.compact.sort
    list_group views
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/monkey/set/all/view_viz.rb ~~
