# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "InputType"
#
module InputType;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/edit/set/self/input_type.rb"; end
setting_opts group: :editing,
             position: 3,
             rule_type_editable: false,
             short_help_text: "edit interface"

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def raw_help_text
    "Configure [[https://ace.c9.io/|ace]], "\
    "Decko's default code editor, using these available "\
    "[[https://github.com/ajaxorg/ace/wiki/Configuring-Ace|options]]."
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/edit/set/self/input_type.rb ~~
