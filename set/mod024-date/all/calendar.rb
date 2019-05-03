# -*- encoding : utf-8 -*-
class Card; module Set; class All
module Calendar;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/date/set/all/calendar.rb"; end
Self::InputOptions.add_to_basket :options, "calendar"

format :html do
  def calendar_input
    text_field :content, class: "date-editor datetimepicker-input",
                         "data-toggle": "datetimepicker",
                         "data-target": "##{form_prefix}_content"
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/date/set/all/calendar.rb ~~
