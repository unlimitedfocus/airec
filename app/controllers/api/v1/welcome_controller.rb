class Api::V1::WelcomeController < ApplicationController
  before_action :authenticate_user!
  respond_to :json

  def index
    render :json => { root: '/' }
  end

end
