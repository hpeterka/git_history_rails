module GitHistoryRails
  class Engine < ::Rails::Engine
    isolate_namespace GitHistoryRails
    require "git"

  initializer 'git_history_rails.configuration' do |app|
    File.open("tmp/test_config","a").puts(app.config.to_s)
    if app.config.try(:git_history_rails) && app.config.git_history_rails[:mounted_path]
      app.routes.append do
        mount GitHistoryRails::Engine => app.config.git_history_rails[:mounted_path]
      end
     else
       app.routes.append do
          mount GitHistoryRails::Engine => "/git_history"
        end
      end
    end
  end
end
