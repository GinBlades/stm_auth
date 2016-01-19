module OauthCookieHelper
  def env_domain
    domain = Rails.application.secrets.cookie_domain || 'localhost'
    Rails.logger.error("trying to set cookie for #{domain}")
    domain == "localhost" ? :all : domain
  end

  def set_user_cookie(user)
    cookies[:stm_auth] = { :value => user.id, :domain => env_domain }
  end

  def remove_user_cookie
    cookies.delete(:stm_auth, :domain => env_domain)
  end
end
