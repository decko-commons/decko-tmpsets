# -*- encoding : utf-8 -*-
class Card; module Set; module Type; module CoffeeScript; extend Card::Set # ~~~~~~~~~~~ above autogenerated; below pulled from /Users/ethan/dev/wagn/gem/card/mod/03_machines/set/type/coffee_script.rb ~~~~~~~~~~~
# -*- encoding : utf-8 -*-
require 'coffee-script'
require 'uglifier'

require_dependency 'card/machine'
require_dependency 'card/machine_input'

include Machine
include MachineInput

def compile_coffee script
  ::CoffeeScript.compile script
rescue =>e
  e
end

machine_input do
  Uglifier.compile( compile_coffee format(:js)._render_raw )
end

store_machine_output filetype: 'js'

def clean_html?
  false
end


format do
  def chunk_list  #turn off autodetection of uri's
    :inclusion_only
  end
end


format :html do
  view :editor, mod: Html::HtmlFormat

  view :content_changes do |args|
    %{
      <pre>#{super(args)}</pre>
    }
  end

  view :core do |args|
    js = card.compile_coffee _render_raw
    highlighted_js = ::CodeRay.scan( js, :js ).div
    process_content highlighted_js
  end

end


format do
  view :core do |args|
    process_content card.compile_coffee(_render_raw)
  end
end

def diff_args
  { format: :text }
end


# ~~~~~~~~~~~ below autogenerated; above pulled from /Users/ethan/dev/wagn/gem/card/mod/03_machines/set/type/coffee_script.rb ~~~~~~~~~~~
end;end;end;end;
