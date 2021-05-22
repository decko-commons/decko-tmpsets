# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Alert)
#
module Alert;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/layout/set/all/alert.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  # alert_types: 'success', 'info', 'warning', 'danger'
  def alert alert_type, dismissable=false, disappear=false, args={}
    add_class args, alert_classes(alert_type, dismissable, disappear)
    wrap_with :div, args.merge(role: "alert") do
      [(alert_close_button if dismissable), output(yield)]
    end
  end

  def alert_classes alert_type, dismissable, disappear
    classes = ["alert", "alert-#{alert_type}"]
    classes << "alert-dismissible " if dismissable
    classes << "_disappear" if disappear
    classy classes
  end

  def alert_close_button
    wrap_with :button, type: "button", "data-dismiss": "alert",
                       class: "close", "aria-label": "Close" do
      wrap_with :span, "&times;", "aria-hidden" => true
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/layout/set/all/alert.rb ~~
