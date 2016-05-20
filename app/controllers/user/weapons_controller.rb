class User::WeaponsController < ApplicationController

  skip_before_action :weapons, only: :index

  def index
    @user = params[:user].to_i
    @weapons = Weapon.where("user_id = ?", @user)
  end

end
