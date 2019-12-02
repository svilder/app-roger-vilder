class ApplicationController < ActionController::Base
  before_action :set_locale
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def default_url_options
    { locale: I18n.locale == I18n.default_locale ? nil : I18n.locale }
  end

  private

  def set_locale
    I18n.locale = params.fetch(:locale, I18n.default_locale).to_sym
  end
end
