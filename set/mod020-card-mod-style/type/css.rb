# -*- encoding : utf-8 -*-
class Card; module Set; class Type
# Set: All "Css" cards
#
# -*- encoding : utf-8 -*-
module Css;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/style/set/type/css.rb"; end

require "sassc"
require "benchmark"

include_set Abstract::Machine
include_set Abstract::MachineInput

store_machine_output filetype: "css"

machine_input do
  compress_css format(:css)._render_core
end

def compress_css input
  compress_css? ? SassC::Engine.new(input, style: :compressed).render : input
rescue StandardError => e
  raise Card::Error, css_compression_error(e)
end

def css_compression_error error
  # scss is compiled in a view
  # If there is a scss syntax error we get the rescued view here
  # and the error that the rescued view is no valid css
  # To get the original error we have to refer to Card::Error.current
  if Card::Error.current
    Card::Error.current.message
  else
    "Sass::SyntaxError (#{name}): #{error.message}"
  end
end

def clean_html?
  false
end

def compress_css?
  true
  # !Rails.env.development?
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  # def default_nest_view
  #   :raw
  # end

  # turn off autodetection of uri's
  def chunk_list
    :references
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def input_type
    :ace_editor
  end

  def ace_mode
    :css
  end

  def default_nest_view
    :closed
  end

  view :core do
    # FIXME: scan must happen before process for inclusion interactions to
    # work, but this will likely cause
    # problems with including other css?
    process_content ::CodeRay.scan(_render_raw, :css).div, size: :icon
  end

  def content_changes action, diff_type, hide_diff=false
    wrap_with(:pre) { super }
  end
end

module CssFormat; module_parent.send :register_set_format, Card::Format::CssFormat, self; extend Card::Set::AbstractFormat
  view :import do
    %{\n@import url("#{_render_url}");\n}
  end
end

def diff_args
  { diff_format: :text }
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/style/set/type/css.rb ~~
