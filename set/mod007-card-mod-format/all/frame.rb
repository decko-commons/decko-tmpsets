# -*- encoding : utf-8 -*-
class Card; module Set; class All
# Set: All cards (Frame)
#
module Frame;
extend Card::Set
def self.source_location; "/Users/ethan/dev/decko/gem/mod/format/set/all/frame.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  view :flash, cache: :never, unknown: true, perms: :none do
    flash_notice = params[:flash] || Env.success.flash
    return "" unless flash_notice.present? && focal?

    Array(flash_notice).join "\n"
  end

  def frame &block
    standard_frame(&block)
  end

  def standard_frame slot=true, &block
    with_frame slot do
      wrap_body(&block) if block_given?
    end
  end

  def with_frame slot=true, header=frame_header, slot_opts={}
    voo.hide :help
    add_name_context
    wrap slot, slot_opts do
      panel do
        [header, frame_help, render_flash, (yield if block_given?)]
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

  def frame_and_form action, form_opts={}, &block
    form_opts ||= {}
    frame do
      card_form action, form_opts, &block
    end
  end

  def panel &block
    wrap_with :div, class: classy("d0-card-frame"), &block
  end
end
end;end;end;end;
# ~~ generated from /Users/ethan/dev/decko/gem/mod/format/set/all/frame.rb ~~
