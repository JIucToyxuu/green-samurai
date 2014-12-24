class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def self.provides_callback_for(provider)
    class_eval %Q{
      def #{provider}
        @user = User.find_for_oauth(env["omniauth.auth"])

        puts 'env'
        puts env["omniauth.auth"]

        if @user.nil?
          redirect_to new_user_registration_url
        else
          
            sign_in_and_redirect @user, event: :authentication
          
        end

      end
    }
  end

  [:twitter, :facebook, :linkedin, :vkontakte].each do |provider|
    provides_callback_for provider
  end

end