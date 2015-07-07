class OrdersController < ApplicationController
  # GET /orders
  def index
    @orders = Order.all
  end

  # POST /orders
  def create
    @payment = PayPal::SDK::REST::Payment.new({
      intent: "sale",
      payer: {
        payment_method: "paypal" },
      redirect_urls: {
        return_url: success_orders_url,
        cancel_url: root_url },
      transactions: [ {
        amount: {
          total: "10",
          currency: "USD" },
        description: "ExpressBot Payment" } ] } )
    if @payment.create
      redirect_url = @payment.links.find {|link| link.rel == 'approval_url'}
      redirect_to redirect_url.href
    else
      redirect_to root_url, notice: @payment.error
    end
  end

  # GET /success
  def success
    payment = PayPal::SDK::REST::Payment.find(params[:paymentId])
    Order.create(response: JSON(params.slice(:paymentId, :token, :PayerID)))
    redirect_to root_url, notice: "Payment Succesful"
  end
end
