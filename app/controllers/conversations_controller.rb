class ConversationsController < ApplicationController
  def index
    conversations = Conversation.all
    render json: conversations
  end

  def create
    conversation = Conversation.new(conversation_params)
    if conversation.save
      serialized_data = ConversationSerializer.new(conversation).as_json
      ActionCable.server.broadcast('conversations_channel', conversation: serialized_data)
    end
  end
  
  private
  
  def conversation_params
    params.require(:conversation).permit(:title)
  end
end
