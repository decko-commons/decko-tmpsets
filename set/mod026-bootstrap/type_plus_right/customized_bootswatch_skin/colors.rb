# -*- encoding : utf-8 -*-
class Card; module Set; class TypePlusRight; module CustomizedBootswatchSkin;
# Set: All "+Colors" cards on "CustomizedBootswatchSkin" cards
#
module Colors;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/bootstrap/set/type_plus_right/customized_bootswatch_skin/colors.rb"; end
VARIABLE_NAMES = {
  colors: %i[blue indigo purple pink red orange yellow green teal cyan
             white gray-100 gray-200 gray-300 gray-400 gray-500 gray-600 gray-700 gray-800
             gray-900 black],
  theme_colors: %i[primary secondary success info warning danger light dark
                   body-bg body-color]
}.freeze

# temporarily removed: link-color card-bg card-cap-bg
# bootstrap default for link-color uses the theme-color function which
# has to be defined between the theme-colors and that variable
# (see bootstrap's _variables.scss)
# TODO: deal with that

# @param name [String] a scss variable name (it can start with a $)
def variable_value name
  value_from_scss(name, content) ||
    value_from_variables_card(name) ||
    default_value_from_bootstrap(name)
end

def value_from_scss name, source
  name = name.to_s
  name = name[1..-1] if name.start_with?("$")
  source.match(definition_regex(name))&.capture(:value)
end

def value_from_variables_card name
  return unless (var_card = left.variables_card) && var_card.content.present?
  value_from_scss name, var_card.content
end

def definition_regex name
  /^(?<before>\s*\$#{name}\:\s*)(?<value>.+?)(?<after> !default;)$/
end

def default_value_from_bootstrap name
  value_from_scss name, bootstrap_variables_scss
end

def bootstrap_variables_scss
  @bootstrap_variables_scss ||= Type::CustomizedBootswatchSkin.read_bootstrap_variables
end

def colors
  @colors ||= variable_group_with_values :colors
end

def theme_colors
  @theme_colors ||= variable_group_with_values :theme_colors
end

def variable_group_with_values group
  VARIABLE_NAMES[group].each_with_object({}) do |name, h|
    h[name] = variable_value name
  end
end

module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :editor, template: :haml do
    @colors = card.colors
    @theme_colors = card.theme_colors
  end

  def theme_color_picker name, value
    # value = value[1..-1] if value.start_with? "$"
    options = VARIABLE_NAMES[:colors].map { |var| "$#{var}" }
    options << value unless options.include? value
    select_tag "theme_colors[#{name}]", options_for_select(options, value),
               class: "tags form-control"
  end

  before :bar_right do
    voo.show :edit_button
  end

  view :core, template: :haml do
    @colors = card.theme_colors.reject { |k, _v| k.in? %i[body-bg body-color] }
  end

  view :bar_middle do
    <<-HTML
      <div class="colorpicker-element">
        <div class="input-group-addon">
          <span class="bg-body border p-1">Text</span>
          <span class="bg-dark text-light border p-1">Nav</span>
            <i class="bg-primary"></i>
          <i class="bg-secondary"></i>
        </div>
      </div>
    HTML
  end
end

event :translate_variables_to_scss, :prepare_to_validate, on: :update do
  replace_values :colors
  replace_values :theme_colors
end

def replace_values group, prefix=""
  values = variable_values_from_params group
  values.each_pair do |name, val|
    if content.match definition_regex(name)
      content.gsub! definition_regex(name), "\\k<before>#{prefix}#{val}\\k<after>"
    else
      self.content += "$#{name}: #{prefix}#{val} !default;\n"
    end
  end
end

def variable_values_from_params group
  Env.params.dig(group)&.slice(*VARIABLE_NAMES[group]) || {}
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/bootstrap/set/type_plus_right/customized_bootswatch_skin/colors.rb ~~
