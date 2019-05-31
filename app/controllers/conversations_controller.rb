class ConversationsController < ApplicationController
  skip_after_action :verify_authorized

  def index
    session[:conversations] ||= []
    @users = User.all.where.not(id: current_user)
    @conversations = policy_scope(Conversation).includes(:recipient, :messages).find(session[:conversations])
  end

  def create
    @conversation = Conversation.get(current_user.id, params[:user_id])
    binding.pry
    add_to_conversations unless conversated?
    respond_to do |format|
      format.js
    end
  end

  def close
    @conversation = Conversation.find(params[:id])

    session[:conversations].delete(@conversation.id)

    respond_to do |format|
      format.js
    end
  end

  private

  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end

  def conversated?
    session[:conversations].include?(@conversation.id)
  end
end
