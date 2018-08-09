class Api::V1::UsersController < Api::V1::BaseController
  def update
    @user = User.find(params[:id])
    if @user.update!(user_params)
      render json: @user
    else
      render_error
    end
  end

  private

   def user_params
    params.require(:user).permit(:id, :username, :thief_id, :area, :open_id)
  end

  def render_error
    render json: { errors: @item.errors.full_messages }, status: :unprocessable_entity
  end

end
