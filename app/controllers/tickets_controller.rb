class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to :tickets, notice: 'チケットを作成しました'
    else
      render :new
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(
      :title,
      :body,
      :number,
      :expired_at
    )
  end
end
