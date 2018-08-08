class Api::V1::ChatRecordsController < Api::V1::BaseController
  before_action do
   @exchange = Exchange.find(params[:exchange_id])
  end

  def index
    @messages = @exchange.chat_records
  end

  def create
   @message = ChatRecord.new(message_params)
    if @message.save
      render :index
    else
      render_error
    end
  end

  private

   def message_params
    params.require(:chat_records).permit(:message, :user_id, :exchange_id)
   end
end

