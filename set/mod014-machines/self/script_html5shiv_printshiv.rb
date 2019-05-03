# -*- encoding : utf-8 -*-
class Card; module Set; class Self
module ScriptHtml5shivPrintshiv;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/machines/set/self/script_html5shiv_printshiv.rb"; end
include_set Abstract::CodeFile

format :html do
  view :script_tag, perms: :none do
    <<-HTML.strip_heredoc
      <!--[if lt IE 9]>
        #{javascript_include_tag card.machine_output_url}
      <![endif]-->
    HTML
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/machines/set/self/script_html5shiv_printshiv.rb ~~
