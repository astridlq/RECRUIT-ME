class MessagesController < ApplicationController
  skip_after_action :verify_authorized
  skip_before_action :verify_authenticity_token, only: [:update_message]

  def create
    @conversation = Conversation.includes(:recipient).find(params[:conversation_id])
    @message = @conversation.messages.create(message_params)
    authorize @message
    respond_to do |format|
      format.js
    end
  end

  def update_message
    puts params
    params[:ids].each do |id|
      Message.find(id).update(read: true)
    end
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :body)
  end

end
