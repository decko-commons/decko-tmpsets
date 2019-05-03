# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Haml)
#
module Haml;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/core/set/all/haml.rb"; end
module Format; parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  include Card::Set::Format::HamlPaths

  define_method :the_scope do
    set_scope
  end

  define_method :haml_scope do
    set_scope
  end

  # Renders haml templates. The haml template can be passed as string or
  # block or a symbol that refers to a view template.
  # @param  template_or_locals [Hash, String, Symbol]
  #   If a symbol is given then a template is expected in the corresponding view
  #   directory.
  # @return [String] rendered haml as HTML
  # @example render a view template
  #   # view/type/basic/my_template.haml:
  #   %p
  #     Hi
  #     = name
  #
  #   # set/type/basic.rb:
  #   view :my_view do
  #     haml :my_template, name: "Joe:  # => "<p>Hi Joe<p/>"
  #   end
  # @example use a block to pass haml
  #   haml name: "Joe" do
  #     <<-HAML.strip_heredoc
  #       %p
  #         Hi
  #         = name
  #     HAML
  #   # => <p>Hi Joe</p>
  # @example create a slot in haml code
  #   - haml_wrap do
  #     %p
  #       some haml

  def haml *args, &block
    if args.first.is_a? Symbol
      process_haml_template(*args)
    else
      process_haml(*args, &block)
    end
  end

  def haml_partial partial, locals={}
    locals[:template_path] ||= @template_path
    process_haml_template "_#{partial}".to_sym, locals
  end

  private

  def process_haml *args
    args.unshift yield if block_given?
    haml_to_html(*args)
  end

  def process_haml_template template_name, *args
    locals = args.first || {}
    path = identify_template_path template_name, locals
    with_template_path path do
      haml_to_html ::File.read(path), *args
    end
    # rescue => e
    #   raise Card::Error, "HAML error #{template_name}: #{e.message}\n#{e.backtrace}"
  end

  def identify_template_path view, locals={}
    base_path = locals.delete(:template_path) || caller_locations[2].path
    haml_template_path view, base_path
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/core/set/all/haml.rb ~~
