# username.rb

def generate_username1(firstName)
  firstName[0].downcase
end

def generate_username2(firstName, lastName)
  (firstName != '' && lastName != '') ?
    (firstName.gsub(/[^A-Za-z]/, '').strip[0] + lastName.gsub(/[^A-Za-z]/, '').strip).downcase : nil
end
