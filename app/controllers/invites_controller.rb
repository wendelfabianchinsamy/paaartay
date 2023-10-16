# frozen_string_literal: true

class InvitesController < ApplicationController
  def create
    SendInviteWorker.perform_async(invite_params.to_h)

    render(json: { message: "Invite sent!" })
  end

  private

  def invite_params
    params.require(:invite).permit(:title, :email, :body)
  end
end
