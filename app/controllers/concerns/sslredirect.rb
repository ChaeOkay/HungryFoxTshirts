module Sslredirect
  extend ActiveSupport::Concern

  def enforce_ssl
    redirect_to :protocol => "https://" if unsecure
  end

  private

  def unsecure
    (request.protocol == "http://") && production?
  end

  def production?
    Rails.env.production?
  end
end
