class MusikController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_subscription!
  def index
  end
end
