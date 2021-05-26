# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Csv)
#
module Csv;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/format/set/all/csv.rb"; end
require "csv"

module CsvFormat; module_parent.send :register_set_format, Card::Format::CsvFormat, self; extend Card::Set::AbstractFormat
  def default_nest_view
    :core
  end

  def default_item_view
    depth.zero? ? :csv_row : :name
  end

  view :core do
    if (item_view_options[:view] == :name_with_fields) && focal?
      title_row("item name") + name_with_field_rows
    else
      super()
    end
  end

  view :csv_row do
    array = _render_raw.scan(/\{\{[^}]*\}\}/).map do |inc|
      process_content(inc).strip
    end

    CSV.generate_line(array).strip
    # strip is because search already joins with newlines
  end

  view :unknown do
    ""
  end

  view :name_with_fields do
    CSV.generate_line name_with_fields_row
  end

  def name_with_fields_row
    nested_field_names.each_with_object([card.name]) do |field_name, row|
      row << nest(field_name)
    end
  end

  def name_with_field_rows
    return [] unless row_card_names.present?

    row_card_names.map do |item_name|
      CSV.generate_line row_from_field_names(item_name, columns)
    end.join
  end

  def row_card_names
    @row_cards ||= card.item_names
  end

  def columns
    csv_structure_card.format.nested_field_names.map(&:tag)
  end

  def csv_structure_card
    card.rule_card(:csv_structure) || Card.fetch(row_card_names.first)
  end

  def row_from_field_names parent_name, field_names, view=:core
    field_names.each_with_object([parent_name]) do |field, row|
      row << nest([parent_name, field], view: view)
    end
  end

  def title_row extra_titles=nil
    titles = column_titles extra_titles
    return "" unless titles.present?

    CSV.generate_line titles.map(&:upcase)
  end

  def column_titles extra_titles=nil
    res = Array extra_titles
    card1 = Card.fetch card.item_names(limit: 1).first
    card1.nest_chunks.each do |chunk|
      res << column_title(chunk.options)
    end
    res.compact
  end

  def column_title opts
    if opts[:title]
      opts[:title]
    elsif %w[name link].member? opts[:view]
      opts[:view]
    else
      opts[:nest_name].to_name.tag
    end
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/format/set/all/csv.rb ~~
