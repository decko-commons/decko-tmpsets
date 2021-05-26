# -*- encoding : utf-8 -*-
class Card; module Set; class Abstract
# Set: Abstract (AccountDropdown)
#
module AccountDropdown;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/layout/set/abstract/account_dropdown.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def link_to_mycard
    link_to_card Auth.current.name, nil,
                 id: "my-card-link", class: "nav-link #{classy('my-card')}"
  end

  def account_dropdown &render_role_item
    split_button link_to_mycard, nil do
      [
        link_to_card([Auth.current, :account_settings], "Account"),
        (["Roles", role_items(&render_role_item)] if special_roles?)
      ]
    end
  end

  def special_roles?
    Auth.current_roles.size > 1
  end

  def role_items &block
    Auth.current_roles.map(&block)
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/layout/set/abstract/account_dropdown.rb ~~
