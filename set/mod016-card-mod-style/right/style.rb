# -*- encoding : utf-8 -*-
class Card; module Set; class Right
# Set: All "+Style" cards
#
module Style;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-style/set/right/style.rb"; end
require "sassc"
include_set Abstract::Machine

store_machine_output filetype: "css"

def ok_to_read
  true
end

module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  # turn off autodetection of uri's
  def chunk_list
    :nest_only
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  HIDDEN_SKINS = %w[bootstrap_default_skin themeless_bootstrap_skin bootstrap_default_skin
                    classic_bootstrap_skin].freeze

  def default_item_view
    :bar
  end

  view :input, template: :haml

  def themes
    card.rule_card(:content_options).item_cards
  end

  def selectable_themes
    themes.reject do |theme_card|
      theme_card.right&.codename == :stylesheets ||
        theme_card.key.in?(HIDDEN_SKINS)
    end
  end
end

event :customize_theme, :prepare_to_validate, on: :update, when: :customize_theme? do
  skin_name = free_skin_name
  add_subcard skin_name, type_id: CustomizedBootswatchSkinID
  self.content = "[[#{skin_name}]]"
end

def free_skin_name
  name = "#{@theme} skin customized"
  if Card.exist?(name)
    name = "#{name} 1"
    name.next! while Card.exist?(name)
  end
  name
end

def customize_theme?
  Env.params[:customize].present? && (@theme = Env.params[:theme]).present?
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-style/set/right/style.rb ~~
