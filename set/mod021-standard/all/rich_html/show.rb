# -*- encoding : utf-8 -*-
class Card; module Set; class All; module RichHtml;
# Set: All cards (RichHtml, Show)
#
module Show;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/show.rb"; end
module HtmlFormat; parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def show view, args
    content = send show_method, view, args
    show_full_page? ? wrap_with_html_page(content) : content
  end

  def show_method
    "show_#{show_layout? ? :with : :without}_page_layout"
  end

  def show_without_page_layout view, args
    @main = true if params[:is_main] || args[:main]
    args.delete(:layout)
    view ||= args[:home_view] || :open
    render! view, args
  end

  def show_full_page?
    !Env.ajax?
  end

  wrapper :html_page do
    <<-HTML.strip_heredoc
      <!DOCTYPE HTML>
      <html>
        <head>
          #{head_content}
        </head>
        #{interior}
      </html>
    HTML
  end

  def head_content
    nest card.rule_card(:head), view: :head_content
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/show.rb ~~
