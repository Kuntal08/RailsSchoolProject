class Admin::MasterController < ApplicationController
  before_action :is_admin?, only: [:index]

  def index
  end

end
