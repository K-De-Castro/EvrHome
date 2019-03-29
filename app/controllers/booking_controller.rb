class BookingController < ApplicationController
	def create 
		@booking = Bookings.new
		@booking.name = "Minh's"
		@booking.description = "hi"
		@booking.zip = "61401"
		@booking.save
	end
end
