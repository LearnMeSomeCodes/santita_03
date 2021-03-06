
require 'active_record'

class AddressEntry < ActiveRecord::Base
	validates 	:first_name,
				presence: true

	validates	:last_name,
				presence: true

	has_many :emails
	has_many :phone_numbers

end