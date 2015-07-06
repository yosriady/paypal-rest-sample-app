class Order < ActiveRecord::Base

  # Get Payment Details
  def details
    PayPal::SDK::REST::Payment.find(response['paymentId'])
  end
end
