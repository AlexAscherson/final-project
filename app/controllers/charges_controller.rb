class ChargesController < ApplicationController
  def new
end

def create

  @group = Group.find_by_id(session[:group])
  @tournament = Tournament.find_by_id(session[:tournament] )
  # Amount in cents
  @amount = (@tournament.stake*100)
  user = current_user
  @tournament.users << current_user
  

  customer = Stripe::Customer.create(
    :email => '<% user.email %>',
    :card  => params[:stripeToken],
    

  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Stake Payment from <% user.name %> for <% tournament.name %>',
    :currency    => 'gbp'

  )

redirect_to(:back)

rescue Stripe::CardError => e
  flash[:error] = e.message
end

end
