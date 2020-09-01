# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (FormElements)
#
module FormElements;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/edit/set/all/form_elements.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def success_tags opts
    return "" unless opts.present?

    hidden_tags success: opts
  end

  # convert hash into a collection of hidden tags
  def hidden_tags hash, base=nil
    hash ||= {}
    hash.inject("") do |result, (key, val)|
      new_base = base ? "#{base}[#{key}]" : key
      result + process_hidden_value(val, new_base)
    end
  end

  def process_hidden_value val, base
    case val
    when Hash
      hidden_tags val, base
    when Array
      base += "[]"
      val.map do |v|
        hidden_field_tag base, v
      end.join
    else
      hidden_field_tag base, val
    end
  end

  FIELD_HELPERS =
    %w[
      hidden_field color_field date_field datetime_field datetime_local_field
      email_field month_field number_field password_field phone_field
      range_field search_field telephone_field text_area text_field time_field
      url_field week_field file_field label check_box radio_button
    ].freeze

  FIELD_HELPERS.each do |method_name|
    define_method(method_name) do |*args|
      form.send(method_name, *args)
    end
  end

  def submit_button args={}
    text = args.delete(:text) || "Submit"
    args.reverse_merge! situation: "primary", data: {}
    args[:data][:disable_with] ||= args.delete(:disable_with) || "Submitting"
    button_tag text, args
  end

  # redirect to *previous if no :href is given
  def cancel_button args={}
    return unless voo.show? :cancel_button
    text = args.delete(:text) || "Cancel"
    add_class args, "btn btn-#{args.delete(:situation) || 'secondary'}"
    add_class args, cancel_strategy(args[:redirect], args[:href])
    args[:href] ||= path_to_previous
    args["data-remote"] = true
    link_to text, args
  end

  def cancel_strategy redirect, href
    redirect = href.blank? if redirect.nil?
    redirect ? "redirecter" : "slotter"
  end

  def path_to_previous
    path mark: "*previous"
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/edit/set/all/form_elements.rb ~~
