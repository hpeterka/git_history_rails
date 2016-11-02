class GitHistoryRails::ApplicationController < ::ApplicationController
  def index
    begin
      render "index"
    rescue
      render "index", layout: false
    end
  end
end
