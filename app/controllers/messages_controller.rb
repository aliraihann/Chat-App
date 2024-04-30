class MessagesController < ApplicationController
    def index
        def create
            @message = Message.create(body: msg_params[:body], room_id: params[:room_id])
            # @message = current_user.messages.create(body: msg_params[:body], room_id: params[:room_id])
        end
        private
        def msg_params
            params.require(:message).permit(:body)
        end
    end

end
