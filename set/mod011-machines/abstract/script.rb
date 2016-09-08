# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract; module Script; extend Card::Set
# ~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/machines/set/abstract/script.rb ~~
# -*- encoding : utf-8 -*-
require "uglifier"

include_set Abstract::AceEditor

def comment_with_source js
  "//#{name}\n#{js}"
end

def clean_html?
  false
end

format do
  def chunk_list  # turn off autodetection of uri's
    :nest_only
  end
end

format :html do
  def default_editor_args args
    args[:ace_mode] ||= "javascript"
  end

  view :content_changes do |args|
    %(
      <pre>#{super(args)}</pre>
    )
  end

  view :core do |_args|
    process_content highlighted_js
  end

  def highlighted_js
    ::CodeRay.scan(_render_raw, :js).div
  end
end

def diff_args
  { format: :text }
end


# ~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/machines/set/abstract/script.rb ~~
end;end;end;end;
