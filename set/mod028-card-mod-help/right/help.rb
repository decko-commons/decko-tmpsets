# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Help" cards
#
module Help;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/help/set/right/help.rb"; end
include_set Abstract::TemplatedNests

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :popover do
    popover_link _render_core
  end

  def quick_editor
    # TODO: refactor when voo.input_type is ready.  (and use class_up)
    formgroup "Content", input: :content, help: false do
      text_field :content, value: card.content,
                           class: "d0-card-content _submit-after-typing"
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/help/set/right/help.rb ~~
