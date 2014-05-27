module StripeEvents
	class ChargeFailed
		def call(event)
			ForkemMailer.delay.notify_of_failed_payment
		end
	end
	class ChargeSucceeded
		def call(event)
			ForkemMailer.delay.notify_of_failed_payment
		end
	end			
end