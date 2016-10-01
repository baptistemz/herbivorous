class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :set_locale
  before_action :authenticate_user!
  before_filter :staging_authenticate


  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end

  def default_url_options
    { host: ENV['HOST'] || 'localhost:3000' }
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end

  private

  def set_locale
    if cookies[:educator_locale] && I18n.available_locales.include?(cookies[:educator_locale].to_sym)
      l = cookies[:educator_locale].to_sym
    else
      l = I18n.default_locale
      cookies.permanent[:educator_locale] = l
    end
    I18n.locale = l
  end

  def staging_authenticate
    if Rails.env == 'staging'
      authenticate_or_request_with_http_basic 'Staging' do |name, password|
        name == ENV['MY_SITE_USERNAME'] && password == ENV['MY_SITE_SECRET']
      end
    end
  end
end
