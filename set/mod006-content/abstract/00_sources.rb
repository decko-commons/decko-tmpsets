# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (Sources)
#
module Sources;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/content/set/abstract/00_sources.rb"; end
def source_paths
  []
end

def find_file file_path
  unknown_file?(file_path) ? nil : file_path
end

def unknown_file? file_path
  return false if File.exist? file_path

  Rails.logger.info "couldn't locate file #{file_path}"
  true
end

def existing_source_paths
  Array.wrap(source_paths).reject do |file_path|
    unknown_file?(file_path)
  end.compact
end

def source_changed? since:
  existing_source_paths.any? { |path| ::File.mtime(path) > since }
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/content/set/abstract/00_sources.rb ~~
