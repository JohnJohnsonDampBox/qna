class UsersController < ApplicationController
  before_action :set_user, only: :show

  def show
    respond_to do |format|
      format.html #show.html.erb
      format.xml { render :xml => @user }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
