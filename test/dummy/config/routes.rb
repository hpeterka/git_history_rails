Rails.application.routes.draw do

  mount GitHistoryRails::Engine => "/git_history_rails"
end
