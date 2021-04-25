class ApplicationController < ActionController::Base
  before_action :update_basic_data, if: -> { BasicDataProvider::UPDATE_BEFORE_EVERY_ACTION }

  def update_basic_data
    BasicDataProvider.instance.load_data
  end
end
