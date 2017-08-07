class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    render html: "This will be the root page, prompting the user to input destiny name(s)"
  end
end
