# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module AceEditor; extend Card::Set
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/ace_editor/set/abstract/ace_editor.rb ~~
format :html do
  def default_editor_args args
    args[:ace_mode] ||= "html"
  end

  view :editor do |args|
    text_area :content, rows: 5,
                        class: "card-content ace-editor-textarea",
                        "data-ace-mode" => args[:ace_mode]
  end
end


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/ace_editor/set/abstract/ace_editor.rb ~~
end;end;end;end;
