# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Path)
#
module Path;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/format/set/all/path.rb"; end
module Format; module_parent.send :register_set_format, Card::Format, self; extend Card::Set::AbstractFormat
  # Decko uses the term "path" a bit unusually.
  #
  # In most formats, #path returns a full url.  In HTML, it provides everything after
  # the domain/port.
  #
  # If you're feeling saucy, you might point out that typically "paths" don't
  # include queries and fragment identifiers, much less protocols, domains, and ports.
  # 10 pedantry points to you! But "path" is easy to type and the method is smart about
  # format needs, so using it will lead you down the right ... something or other.

  # Format#path is for generating standard card routes, eg, assuming the card
  # associated with the current format is named "current", it will generate paths like
  # these:

  #   path view: :bar   -> "current?view=bar"
  #   path mark: [mycardid] -> "mycardname"
  #   path format: :csv)    -> "current.csv"
  #   path action: :update  -> "update/current"

  # #path produces paths that follow one of three main patterns:

  #   1. mark[.format][?query]  # standard GET request
  #   2. action/mark[?query]    # GET variant of standard actions
  #   3. new/mark               # shortcut for "new" view of cardtype

  # @param opts [Hash, String] a String is treated as a complete path and
  # bypasses all processing
  # @option opts [String, Card::Name, Integer, Symbol, Card] :mark
  # @option opts [Symbol] :action card action (:create, :update, :delete)
  # @option opts [Symbol] :format
  # @option opts [Hash] :card
  # @option opts [TrueClass] :no_mark

  def path opts={}
    return opts unless opts.is_a? Hash

    path = Card::Path.new(card, opts)&.render
    contextualize_path path
  end

  # in base format (and therefore most other formats), even internal paths
  # are rendered as absolute urls.
  def contextualize_path relative_path
    card_url relative_path
  end
end

module JsonFormat; module_parent.send :register_set_format, Card::Format::JsonFormat, self; extend Card::Set::AbstractFormat
  def add_unknown_name_to_opts name, opts
    # noop
  end
end

module CssFormat; module_parent.send :register_set_format, Card::Format::CssFormat, self; extend Card::Set::AbstractFormat
  def contextualize_path relative_path
    if Card.config.file_storage == :local
      # absolute paths lead to invalid assets path in css for cukes
      card_path relative_path
    else
      # ...but relative paths are problematic when machine output and
      # hard-coded assets (like fonts) are on different servers
      card_url relative_path
    end
  end
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  # in HTML, decko paths rendered as relative to the site's root.
  def contextualize_path relative_path
    card_path relative_path
  end
end

module EmailHtmlFormat; module_parent.send :register_set_format, Card::Format::EmailHtmlFormat, self; extend Card::Set::AbstractFormat
  def contextualize_path relative_path
    card_url relative_path
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/format/set/all/path.rb ~~
