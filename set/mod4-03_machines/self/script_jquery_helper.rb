# -*- encoding : utf-8 -*-
class Card; module Set; module Self; module ScriptJqueryHelper; extend Card::Set # ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/03_machines/set/self/script_jquery_helper.rb ~~~~~~~~~~~

view :raw do |args|
  # jquery.ui.all must be after jquery.mobile to override dialog weirdness *
  # jquery.ui.autocomplete must be after jquery.ui stuff 
  # FIXME removed  jquerymobile.js. Doesn't work with the new jquery version
  js_files = %w( jquery-ui.js jquery.ui.autocomplete.html.js jquery.autosize.js jquery.fileupload.js jquery.iframe-transport.js jquery_ujs.js )
  js_files.map do |filename|
    File.read "#{Cardio.gem_root}/mod/03_machines/lib/javascript/#{filename}"
  end.join("\n")
end

format(:html) { include ScriptAce::HtmlFormat }


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/03_machines/set/self/script_jquery_helper.rb ~~~~~~~~~~~
end;end;end;end;
