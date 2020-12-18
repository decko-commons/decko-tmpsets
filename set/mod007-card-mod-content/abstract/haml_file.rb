# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (HamlFile)
#
module HamlFile;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-content/set/abstract/haml_file.rb"; end

def self.included host_class
  host_class.mattr_accessor :template_path
  host_class.extend Card::Set::Format::HamlPaths
  host_class.template_path = host_class.haml_template_path
end

def content
  File.read template_path
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :input do
    "Content is managed by code and cannot be edited"
  end

  def haml_locals
    {}
  end

  view :core do
    haml card.content, haml_locals
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-content/set/abstract/haml_file.rb ~~
