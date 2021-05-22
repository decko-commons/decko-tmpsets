# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "RecaptchaSettings"
#
module RecaptchaSettings;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/recaptcha/set/self/recaptcha_settings.rb"; end
module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def raw_help_text
    # LOCALIZE
    "Register your domain at Google's [[http://google.com/recaptcha|reCAPTCHA service]] "\
    "and enter your site key and secret key below.<br>"\
    "If you want to turn catchas off then change all [[*captcha|captcha rules]] to 'no'."
  end

  # def instructions title, steps
  #   steps = list_tag steps, ordered: true
  #   "#{title}#{steps}"
  # end
  #
  #       <h5>#{instructions}</h5>
  #       #{howto_add_keys}
  #       #{howto_turn_captcha_off}
  #
  # def howto_add_new_recaptcha_keys
  #   instructions t(:recaptcha_howto_add_keys),
  #                [t(:recaptcha_howto_register,
  #                   recaptcha_link: link_to_resource("http://google.com/recaptcha")),
  #                 t(:recaptcha_howto_add,
  #                   recaptcha_settings: link_to_card(:recaptcha_settings))]
  # end
  #
  # def howto_turn_captcha_off
  #   instructions t(:recaptcha_howto_turn_off),
  #                [t(:recaptcha_howto_go, captcha_card: link_to_card(:captcha)),
  #                 t(:recaptcha_howto_update)]
  # end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/recaptcha/set/self/recaptcha_settings.rb ~~
