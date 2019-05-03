# -*- encoding : utf-8 -*-
class Card; module Set; class All; module RichHtml;; module HtmlViews;
module Info;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/html_views/info.rb"; end
format :html do
  view :type do
    link_to_card card.type_card, nil, class: "cardtype"
  end

  view :change do
    voo.show :title_link
    voo.hide :menu
    wrap do
      [_render_title,
       _render_menu,
       _render_last_action]
    end
  end

  view :last_action do
    act = card.last_act
    return unless act

    action = act.action_on card.id
    return unless action

    action_verb =
      case action.action_type
      when :create then "added"
      when :delete then "deleted"
      else
        link_to_view :history, "edited", class: "last-edited", rel: "nofollow"
      end

    %(
      <span class="last-update">
        #{action_verb} #{_render_acted_at} ago by
        #{subformat(card.last_actor)._render_link}
      </span>
    )
  end

  view :type_info do
    return unless card.type_code != :basic

    wrap_with :span, class: "type-info float-right" do
      link_to_card card.type_name, nil, class: "navbar-link"
    end
  end

  view :overview do
    %i[bar box info_bar open closed titled labeled content content_panel].map do |v|
      wrap_with :p, [content_tag(:h3, v), render(v, show: :menu)]
    end.flatten.join ""
  end

  view :viewer do
    %i[bar box info_bar open closed labeled titled content content_panel].map do |v|
      wrap_with :p, [content_tag(:h3, v), render(v, show: :menu)]
    end.flatten.join ""
  end

end
end;end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/html_views/info.rb ~~
