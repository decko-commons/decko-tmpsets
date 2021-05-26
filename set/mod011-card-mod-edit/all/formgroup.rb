# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Formgroup)
#
module Formgroup;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/edit/set/all/formgroup.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  # a formgroup has a label, an input and help text
  def formgroup title, opts={}, &block
    wrap_with :div, formgroup_div_args(opts[:class]) do
      formgroup_body title, opts, &block
    end
  end

  def formgroup_body title, opts, &block
    label = formgroup_label opts[:input], title
    editor_body = editor_wrap opts[:input], &block
    help_text = formgroup_help_text opts[:help]
    "#{label}<div>#{help_text} #{editor_body}</div>"
  end

  def formgroup_label input, title
    return if voo&.hide?(:title) || title.blank?

    label_type = input || :content
    form.label label_type, title
  end

  def formgroup_div_args html_class
    div_args = { class: ["form-group", html_class].compact.join(" ") }
    div_args[:card_id] = card.id if card.real?
    div_args[:card_name] = h card.name if card.name.present?
    div_args
  end

  def formgroup_help_text text=nil
    return "" if text == false

    class_up "help-text", "help-block"
    voo.help = text if voo && text.to_s != "true"
    _render_help
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/edit/set/all/formgroup.rb ~~
