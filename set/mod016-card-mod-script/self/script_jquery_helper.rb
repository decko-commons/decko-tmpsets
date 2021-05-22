# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "ScriptJqueryHelper"
#
module ScriptJqueryHelper;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/script/set/self/script_jquery_helper.rb"; end
include_set Abstract::CodeFile
Self::ScriptLibraries.add_item :script_jquery_helper

def source_files
  # jquery-ui includes all interaction components, the dialog and the autocomplete widget
  # and all dependencies for those
  # decko depends on autocomplete, sortable, jquery.autosize and jquery.fileupload
  # the dialog widget is not used in decko but in wikirate
  # don't know if iframe-transport is needed but it used to be there
  %w[jquery-ui.js
     jquery.autosize.js
     ../../vendor/jquery_file_upload/js/jquery.fileupload.js
     ../../vendor/jquery_file_upload/js/jquery.iframe-transport.js]
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/script/set/self/script_jquery_helper.rb ~~
