class TagsController < ApplicationController

  def index
    @members = User.all
    @tags = Tags.all
	end

  def create
    @users = User.find(params[:members].values)
    @users.each do |user|
      Tags.create!(:user_id=>user.id, :label => params[:tagname])
    end
    redirect_to members_path
  end

end
