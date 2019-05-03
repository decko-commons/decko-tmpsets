# -*- encoding : utf-8 -*-
class Card; module Set; class All; module RichHtml;; module HtmlViews;
# Set: All cards (RichHtml, HtmlViews, Help)
#
module Help;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/html_views/help.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :help, unknown: true, cache: :never do
    help_text = voo.help || rule_based_help
    return "" unless help_text.present?

    wrap_with :div, help_text, class: classy("help-text")
  end

  def rule_based_help
    return "" unless (rule_card = card.help_rule_card)

    with_nest_mode :normal do
      process_content rule_card.content, chunk_list: :references
      # render help card with current card's format
      # so current card's context is used in help card nests
    end
  end
end
end;end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/html_views/help.rb ~~
