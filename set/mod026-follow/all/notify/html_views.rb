# -*- encoding : utf-8 -*-
class Card; module Set; class All; module Notify;
# Set: All cards (Notify, HtmlViews)
#
module HtmlViews;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/follow/set/all/notify/html_views.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  # view :last_action, perms: :none, cache: :never do
  #   _render_last_action_verb
  # end

  def wrap_list list
    "<ul>#{list}</ul>\n"
  end

  def wrap_list_item item
    "<li>#{item}</li>\n"
  end

  def wrap_subedit_item
    "<li>#{yield}</li>\n"
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/follow/set/all/notify/html_views.rb ~~
