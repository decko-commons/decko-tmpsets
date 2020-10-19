# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ScriptHtml5shivPrintshiv"
#
module ScriptHtml5shivPrintshiv;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-machines/set/self/script_html5shiv_printshiv.rb"; end
include_set Abstract::CodeFile

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :script_tag, perms: :none do
    <<-HTML.strip_heredoc
      <!--[if lt IE 9]>
        #{javascript_include_tag card.machine_output_url}
      <![endif]-->
    HTML
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-machines/set/self/script_html5shiv_printshiv.rb ~~
