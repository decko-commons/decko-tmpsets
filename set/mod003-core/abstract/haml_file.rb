# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
module HamlFile;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/abstract/haml_file.rb"; end

def self.included host_class
  host_class.mattr_accessor :template_path
  host_class.extend Card::Set::Format::HamlPaths
  host_class.template_path = host_class.haml_template_path
end

def content
  File.read template_path
end

format :html do
  def haml_locals
    {}
  end

  view :core do
    haml card.content, haml_locals
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/abstract/haml_file.rb ~~
