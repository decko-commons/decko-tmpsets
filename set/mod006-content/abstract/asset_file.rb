# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (AssetFile)
#
module AssetFile;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/content/set/abstract/asset_file.rb"; end
include_set Abstract::CodeFile

def source_path
  db_content
end

def source_files
  db_content
end

def find_file path
  path.tap do |file_path|
    return nil if unknown_file? file_path
  end
end

def unknown_file? file_path
  return false if ::File.exist? file_path

  Rails.logger.info "couldn't locate #{file_path}"
  true
end


def virtual?
  true
end

def new?
  false
end

def compress_js?
  @minimize
end

def minimize
  @minimze = true
end

def local
  @local = true
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  view :core do
    if (source_path = find_file source_path)
      Rails.logger.debug "reading file: #{source_path}"
      ::File.read source_path
    end
  end

  def link_view opts={}
    opts[:path] = { card: { type: card.type, content: card.db_content}}
    link_to_card card.name, _render_title, opts
  end

  def link_to_view view, text=nil, opts={}
    opts[:path] = { card: { type: card.type, content: card.db_content}}
     super view, (text || view), opts
   end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :include_tag do
    card.existing_source_paths.map do |path|
      javascript_include_tag(path)
    end.join "\n"
  end

  def short_content
    fa_icon("exclamation-circle", class: "text-muted pr-2") +
      wrap_with(:span, "asset file", class: "text-muted")
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/content/set/abstract/asset_file.rb ~~
