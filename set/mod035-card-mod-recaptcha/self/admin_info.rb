# -*- encoding : utf-8 -*-
class Card; module Set; class Self
# Set: The card "AdminInfo"
#
module AdminInfo;
extend Card::Set
def self.source_location; "/Users/ezl5238/dev/decko/gem/mod/recaptcha/set/self/admin_info.rb"; end
add_to_basket :warnings, :recaptcha_config_issues

def recaptcha_config_issues?
  RecaptchaCard.using_defaults?
end

module HtmlFormat; module_parent.send :register_set_format, Card::Format::HtmlFormat, self; extend Card::Set::AbstractFormat
  def recaptcha_config_issues_message
    wrap_with :p do
      if Card::Env.localhost?
        # %(Your captcha is currently working with temporary settings.
        #   This is fine for a local installation, but you will need new
        #   recaptcha keys if you want to make this site public.)
        t :recaptcha_captcha_temp, recaptcha_link: add_recaptcha_keys_link
      else
        # %(You are configured to use [[*captcha]], but for that to work
        #   you need new recaptcha keys.)
        t :recaptcha_captcha_keys, recaptcha_link: add_recaptcha_keys_link,
                                   captcha_link: link_to_card(:captcha)
      end
    end
  end

  def add_recaptcha_keys_link
    Card[:recaptcha_settings]&.format&.edit_link link_text: t(:recaptcha_captcha_keys)
  end
end
end;end;end;end;
# ~~ generated from /Users/ezl5238/dev/decko/gem/mod/recaptcha/set/self/admin_info.rb ~~
