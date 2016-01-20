module OauthCookieHelper
  def env_domain
    domain = Rails.application.secrets.cookie_domain || 'localhost'
    domain == "localhost" ? :all : domain
  end

  def set_user_cookie(user)
    cookies[:so_auth] = { value: user.id, domain: env_domain }
  end

  def remove_user_cookie
    cookies.delete(:so_auth, domain: env_domain)
  end
end
