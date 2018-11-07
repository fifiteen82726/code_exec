class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def ok(info={})
    render json: { status: 'ok', data: info }
    true
  end
end
