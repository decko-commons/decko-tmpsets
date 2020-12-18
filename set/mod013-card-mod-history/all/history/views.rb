# -*- encoding : utf-8 -*-
class Card; module Set; class All; module History;
# Set: All cards (History, Views)
#
# History views
module Views;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-history/set/all/history/views.rb"; end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :history, cache: :never do
    frame do
      class_up "d0-card-body",  "history-slot"
      acts_layout card.history_acts, :relative, :show
    end
  end

  view :act, cache: :never do
    act_listing act_from_context
  end

  view :act_legend do
    bs_layout do
      row md: [12, 12], lg: [7, 5] do
        col action_legend
        col content_legend, class: "text-right"
      end
    end
  end

  view :draft_legend do
    "#{action_icon(:draft)} unsaved draft"
  end

  view :action_summary do
    action_content action_from_context, :summary
  end

  view :action_expanded do
    action_content action_from_context, :expanded
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-history/set/all/history/views.rb ~~
