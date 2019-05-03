# -*- encoding : utf-8 -*-
class Card; module Set; class All; module RichHtml;
module Frame;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/frame.rb"; end
format :html do
  view :flash, cache: :never, unknown: true do
    flash_notice = params[:flash] || Env.success.flash
    return "" unless flash_notice.present? && focal?

    Array(flash_notice).join "\n"
  end

  def frame &block
    standard_frame &block
  end

  def standard_frame slot=true
    with_frame slot do
      wrap_body { yield } if block_given?
    end
  end

  def with_frame slot=true, header=frame_header, slot_opts={}
    voo.hide :help
    wrap slot, slot_opts do
      panel do
        [header, frame_help, _render(:flash), (yield if block_given?)]
      end
    end
  end

  def frame_header
    _render_header
  end

  def frame_help
    with_class_up "help-text", "alert alert-info" do
      _render :help
    end
  end

  def frame_and_form action, form_opts={}
    form_opts ||= {}
    frame do
      card_form action, form_opts do
        yield
      end
    end
  end

  def panel
    wrap_with :div, class: classy("d0-card-frame") do
      yield
    end
  end
end
end;end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/card/mod/standard/set/all/rich_html/frame.rb ~~
