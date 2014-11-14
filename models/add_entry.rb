
def add_entry

	entry = AddressEntry.new

	puts "CREATE NEW ENTRY"
	puts "First name: "
	entry.first_name = gets.chomp

	puts "Last name: "
	entry.last_name = gets.chomp

	loop do

	puts "Would you like to enter a phone number? (Y/N)"
	response = gets.chomp

		if response == "Y" or response == "y"

			phone = PhoneNumber.new

			puts "Phone number: "
			phone.phone_number = gets.chomp

			puts "Phone number category: "
			phone.category = gets.chomp

			entry.phone_numbers.push(phone)

		elsif response == "N" or response == "n"
			break
		else
			puts "Please enter Y/N"
		end
	end

	puts "Would you like to enter an e-mail address? (Y/N)"
	response = gets.chomp

	loop do

		if response == "Y" or "y"

			email = Email.new

			puts "Email address: "
			email.email = gets.chomp

			puts "Email category: "
			email.category = gets.chomp

			entry.emails.push(email)

			puts "Would you like to enter additional e-mail addresses? (Y/N)"
			response = gets.chomp

		elsif response == "N" or "n"
			break
		else
			puts "Please enter Y/N"
		end
	end

	entry.save
	phone.save
	email.save

end