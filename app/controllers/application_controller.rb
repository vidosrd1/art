class ApplicationController < ActionController::Base
  include Pagy::Backend

  def hello
    render html: "hello, world!"
  end
end
