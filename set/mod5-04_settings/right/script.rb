# -*- encoding : utf-8 -*-
class Card; module Set; module Right; module Script; extend Card::Set # ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/04_settings/set/right/script.rb ~~~~~~~~~~~
include Machine

store_machine_output :filetype => "js"


view :javascript_include_tag do |args|
  %{
    <script src="#{card.machine_output_url}" type="text/javascript"></script>
  }
end


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/04_settings/set/right/script.rb ~~~~~~~~~~~
end;end;end;end;
