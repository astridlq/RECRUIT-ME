class ConversationsController < ApplicationController
  skip_after_action :verify_authorized

  def index
    @users = User.all.where.not(id: current_user)
    @conversations = policy_scope(Conversation).where(recipient_id: current_user.id).or(policy_scope(Conversation).where(sender_id: current_user.id))
  end

  def create
    @conversation = Conversation.get(current_user.id, params[:user_id])
    add_to_conversations unless conversated?
    respond_to do |format|
      format.js
    end
  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = @conversation.messages.order(id: :asc)
    respond_to do |format|
      format.js
    end
  end
end
