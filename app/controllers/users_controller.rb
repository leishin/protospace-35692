class UsersController < ApplicationController
  before_action :authenticate_user!,except: [:show]
  def show
    @user=User.find(params[:id])
    @name=@user.name
    @prototypes=@user.prototypes
  end
end
