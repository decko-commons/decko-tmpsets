# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Calendar)
#
module Calendar;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/date/set/all/calendar.rb"; end
Self::InputOptions.add_to_basket :options, "calendar"

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def calendar_input
    text_field :content, class: "date-editor datetimepicker-input",
                         "data-toggle": "datetimepicker",
                         "data-target": "##{form_prefix}_content.date-editor"
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/date/set/all/calendar.rb ~~
