class ChargesController < ApplicationController
  def new
end

def create

  @group = Group.find_by_id(session[:group])
  @tournament = Tournament.find_by_id(session[:tournament] )
  # Amount in cents
  @amount = (@tournament.stake*100)
  user = current_user
  binding.pry

  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'gbp'

  )

redirect_to(:back)

rescue Stripe::CardError => e
  flash[:error] = e.message
end

end
