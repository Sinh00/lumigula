class Api::V1::UsersController < ApplicationController
  # 一覧
  def index
    users = User.all
    render json: users.as_json(only: [:id, :user_id, :user_name, :email, :created_at])
  end
end
