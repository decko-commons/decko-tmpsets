# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "Cardtype"
#
module Cardtype;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/rules/set/self/cardtype.rb"; end
GROUP = {
  "Text" => %w[RichText PlainText Markdown Phrase HTML],
  "Data" => %w[Number Toggle Date URI],
  "Upload" => %w[File Image],
  "Custom" => [],
  "Organize" => ["List", "Pointer", "Search", "Link list", "Nest list"],
  "Template" => ["Notification template", "Email template", "Twitter template"],
  "Admin" => ["Cardtype", "User", "Role", "Sign up", "Session", "Set", "Setting"],
  "Styling" => ["Layout", "Skin", "Bootswatch skin", "Customized bootswatch skin",
                "CSS", "SCSS"],
  "Scripting" => %w[JSON JavaScript CoffeeScript]
}.freeze

# DEFAULT_RULE_GROUPS = ["Text", "Data", "Upload", "Organize - Search"]
# STRUCTURE_RULE_GROUPS = ["Text", "Organize > Search"]

# group for each cardtype: { "RichText => "Content", "Layout" => "Admin", ... }
GROUP_MAP = GROUP.each_with_object({}) do |(cat, types), h|
  types.each { |t| h[t] = cat }
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :grouped_list do
    GROUP.keys.map do |group|
      type_list = group == "Custom" ? custom_types : GROUP[group]
      next if type_list.empty?

      [wrap_with(:h5, group), wrap_with(:p, listing(type_list))]
    end.flatten.join "\n"
  end

  def custom_types
    custom_types = []

    Card.search(type_id: Card::CardtypeID, return: "name").each do |name|
      next if ::Card::Set::Self::Cardtype::GROUP_MAP[name]

      custom_types << name
    end
    custom_types
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/rules/set/self/cardtype.rb ~~
