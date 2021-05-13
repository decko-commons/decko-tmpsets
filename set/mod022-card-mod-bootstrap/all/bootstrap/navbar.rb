# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Bootstrap;
# Set: All cards (Bootstrap, Navbar)
#
module Navbar;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card-mod-bootstrap/set/all/bootstrap/navbar.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  # Options
  # @param opts [Hash]
  # @option opts [String, Hash<name, href>] brand
  # @option opts [String] class
  # @option opts [Boolean] no_collapse
  # @option opts [:left, :right] toggle_align
  def navbar id, opts={}, &block
    nav_opts = opts[:navbar_opts] || {}
    nav_opts[:class] ||= opts[:class]
    add_class nav_opts,
              "navbar navbar-dark bg-#{opts.delete(:navbar_type) || 'primary'}"
    navbar_content id, opts, nav_opts, &block
  end

  private

  def navbar_content id, opts, nav_opts
    content = yield
    if opts[:no_collapse]
      navbar_nocollapse content, nav_opts
    else
      navbar_responsive id, content, opts, nav_opts
    end
  end

  def navbar_nocollapse content, nav_opts
    # content = wrap_with(:div, content)
    wrap_with :nav, content, nav_opts
  end

  def navbar_responsive id, content, opts, nav_opts
    opts[:toggle_align] ||= :right
    wrap_with :nav, nav_opts do
      haml :navbar_responsive, id: id, content: content, opts: opts
    end
  end

  def breadcrumb items
    wrap_with :ol, class: "breadcrumb" do
      items.map do |item|
        wrap_with :li, item, class: "breadcrumb-item"
      end.join
    end
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card-mod-bootstrap/set/all/bootstrap/navbar.rb ~~
