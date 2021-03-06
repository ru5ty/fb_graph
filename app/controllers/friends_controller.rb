class FriendsController < ApplicationController
  before_filter :require_authentication

  def show
    @posts = current_user.friends
  end

  def create
    current_user.profile.feed!(
      :message => params[:message]
    )
    redirect_to timeline_url
  end
end
