# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+ContentOptionView" cards
#
module ContentOptionView;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card/mod/settings/set/right/content_option_view.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def quick_edit
    if card.left.prototype_default_card&.try(:show_content_options?) &&
       card.left.prototype.rule_card(:input_type)&.supports_content_option_view?
      super
    else
      ""
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card/mod/settings/set/right/content_option_view.rb ~~
