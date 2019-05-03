# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Account" cards
module Account;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/follow/set/right/account.rb"; end
def send_change_notice act, followed_set, follow_option
  return unless changes_visible?(act)

  Auth.as(left.id) do
    Card[:follower_notification_email].deliver(
      act.card, { to: email },
      auth: left,
      active_notice: { follower: left.name,
                       followed_set: followed_set,
                       follow_option: follow_option }
    )
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/follow/set/right/account.rb ~~
