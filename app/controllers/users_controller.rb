class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @listings = @user.listings.order("created_at DESC")
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
