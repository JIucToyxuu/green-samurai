class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def self.provides_callback_for(provider)
    class_eval %Q{
      def #{provider}
        @user = User.find_for_oauth(env["omniauth.auth"])
        @identity = Identity.find_by_uid(env["omniauth.auth"].uid)

        if @identity.nil?

          if env["omniauth.auth"]["info"]["urls"]["Twitter"].nil?
            redirect_to new_user_registration_url
          else
            cookies[:twitter_data] = JSON.generate(env["omniauth.auth"])
            redirect_to confirm_twitter_email_url
          end
        else
          sign_in_and_redirect @identity.user, event: :authentication          
        end

      end
    }
  end


  [:twitter, :facebook, :linkedin, :vkontakte, :google_oauth2].each do |provider|
    provides_callback_for provider
  end

end