# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (GoogleAnalytics)
#
module GoogleAnalytics;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/card-mod-google_analytics/set/all/google_analytics.rb"; end
require "staccato"

mattr_accessor :server_side_tracking_formats

self.server_side_tracking_formats = %i[csv json]

event :track_page, before: :show_page, when: :track_page? do
  tracker.pageview path: Env.controller.request&.path, host: Env.host, title: name
end

def track_page?
  google_analytics_key &&
    Env.controller&.response_format&.in?(server_side_tracking_formats)
end

def tracker
  return unless google_analytics_key

  ::Staccato.tracker google_analytics_key # , nil, ssl: true
end

def google_analytics_key
  @google_analytics_key ||=
    Card::Rule.global_setting(:google_analytics_key) ||
    Card.config.google_analytics_key
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  delegate :tracker, :google_analytics_key, to: :card

  def views_in_head
    super << :google_analytics_snippet
  end

  view :google_analytics_snippet, unknown: true, perms: :none do
    haml :google_analytics_snippet if google_analytics_key
  end

  def google_analytics_snippet_vars
    { anonymizeIp: true }
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/card-mod-google_analytics/set/all/google_analytics.rb ~~
