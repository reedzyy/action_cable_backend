class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    conversation = Conversation.find(message_params[:conversation_id])
    if message.save
      serialized_data = MessageSerializer.new(message).as_json
      MessagesChannel.broadcast_to(conversation, message: serialized_data)
    end
  end
  
  private
  
  def message_params
    params.require(:message).permit(:text, :conversation_id)
  end
end
