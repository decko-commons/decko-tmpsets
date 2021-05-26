# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Header)
#
# LOCALIZE first item
module Header;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/format/set/all/header.rb"; end
TOGGLE_MAP = { close: %w[open open], open: %w[close closed] }.freeze

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :header, perms: :none do
    main_header
  end

  def main_header
    header_wrap _render_header_title
  end

  def header_wrap content=nil
    haml :header_wrap, content: (block_given? ? yield : output(content))
  end

  view :header_title, perms: :none do
    header_title_elements
  end

  def header_title_elements
    voo.hide :title_toggle if show_view?(:icon_toggle, :hide)
    title_view = show_view?(:title_toggle, :hide) ? :title_toggle : :title
    [_render_icon_toggle(optional: :hide), _render(title_view)]
  end

  def show_draft_link?
    card.drafts.present? && @slot_view == :edit
  end

  view :title_toggle, perms: :none do
    content_toggle(_render_title(hide: :title_link))
  end

  view :icon_toggle, perms: :none do
    direction = @toggle_mode == :close ? :expand : :collapse_down
    content_toggle icon_tag(direction)
  end

  view :toggle, :icon_toggle  # deprecated; use icon_toggle

  def content_toggle text=""
    return if text.nil?

    verb, adjective = toggle_verb_adjective
    link_to_view adjective, text, title: "#{verb} #{card.name}",   # LOCALIZE
                                  class: "toggle-#{adjective} toggler nodblclick"
  end

  def toggle_view
    toggle_verb_adjective.last
  end

  def toggle_verb_adjective
    TOGGLE_MAP[@toggle_mode || :open] ||
      raise(Card::Error, "invalid toggle mode: #{@toggle_mode}")
  end

  def structure_editable?
    card.structure && card.template.ok?(:update)
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/format/set/all/header.rb ~~
