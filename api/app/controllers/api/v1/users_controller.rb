class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user

  # 一覧
  def index
    users = User.all
    render json: users.as_json(only: [:id, :user_id, :user_name, :email, :created_at])
  end

  def show
    render json: current_user.my_json
  end
end
