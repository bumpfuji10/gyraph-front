class ApplicationController < ActionController::Base
  # https://blog.ingage.jp/entry/2022/12/20/104214
  protect_from_forgery with: :null_session
end
