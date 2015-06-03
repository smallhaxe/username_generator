# username.rb

def generate_username1(firstName)
  firstName[0].downcase
end

def generate_username2(firstName, lastName)
  (firstName != '' && lastName != '') ?
    (firstName.gsub(/[^A-Za-z]/, '').strip[0] + lastName.gsub(/[^A-Za-z]/, '').strip).downcase : nil
end

def generate_username3(firstName, lastName, birthYear)
  conditions = ((firstName != '' && lastName != '' && birthYear != '') && (birthYear.integer? && birthYear.to_s.length == 4 && birthYear >= 1900 && birthYear <= Time.now.year))
  if (conditions)
    finit = firstName.gsub(/[^A-Za-z]/, '').strip[0]
    lname = lastName.gsub(/[^A-Za-z]/, '').strip
    byear = birthYear.to_s.strip[-2,2]
    finit + lname + byear
  else
    nil
  end
end
