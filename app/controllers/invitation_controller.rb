class InvitationController < ApplicationController
  def index
    @users = User.where(admin: false)
  end

  def create

  end

  def destroy

  end
end