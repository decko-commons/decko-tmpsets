# -*- encoding : utf-8 -*-
class Card; module Set; module Self; module BootstrapJs; extend Card::Set # ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/06_bootstrap/set/self/bootstrap_js.rb ~~~~~~~~~~~
view :raw do |args|
  [ "bootstrap.js", "bootstrap_modal_wagn.js" ].map do |name|
    File.read "#{Cardio.gem_root}/mod/06_bootstrap/lib/javascript/#{name}"
  end.join("\n")
end

format(:html) { include BootstrapCards::HtmlFormat }


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/06_bootstrap/set/self/bootstrap_js.rb ~~~~~~~~~~~
end;end;end;end;
