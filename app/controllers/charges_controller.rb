class ChargesController < ApplicationController
    def new
    end
    
    def create
      @subtotal = current_order.subtotal
      # Amount in cents
      @amount = (@subtotal * 100).to_i 
    
      customer = Stripe::Customer.create({
        email: params[:stripeEmail],
        source: params[:stripeToken],
      })
    
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'eur',
      })
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to root_path
    end
end
