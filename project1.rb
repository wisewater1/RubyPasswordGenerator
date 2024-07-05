
# Define the character sets
uppercase_letters = ('A'..'Z').to_a
lowercase_letters = ('a'..'z').to_a
special_characters = ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '=', '+']

# all_characters = uppercase_letters + lowercase_letters + numbers + special_characters

# Method to generate a random password
def generate_password(length)
# Define the characer sets
uppercase_letters = ('A'..'Z').to_a
lowercase_letters = ('a'..'z').to_a
numbers = ('0'..'9').to_a
special_characters = ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '=', '+']

  # Combine all character sets into one array
all_characters = uppercase_letters + lowercase_letters + numbers + special_characters

# Shuffle the characters and select random characters based on the desired length
password = []
length.times do
  password << all_characters.sample
end

  # Join the array of characters into a single string and return the password
password.join
end

# Prompt the user to enter the desired password length
puts  "Enter the desired password length"
password_length = gets.chomp.to_i

# Generate the password
password = generate_password(password_length)

# Display the geerated password
puts "Generated password: #{password}"
