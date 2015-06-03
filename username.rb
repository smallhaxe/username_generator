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

def check_privilege(level=0)
  privs = [ 'user', 'seller', 'manager', 'admin' ]
  privs[level]
end

def generate_username4(firstName, lastName, birthYear, level=0)
  conditions = ((firstName != '' && lastName != '' && birthYear != '') && (birthYear.integer? && birthYear.to_s.length == 4 && birthYear >= 1900 && birthYear <= Time.now.year))
  privs = [ 'user', 'seller', 'manager', 'admin' ]
  if (conditions)
    finit = firstName.gsub(/[^A-Za-z]/, '').strip[0]
    lname = lastName.gsub(/[^A-Za-z]/, '').strip
    byear = birthYear.to_s.strip[-2,2]
    uname = finit + lname + byear
    (level == 1 || level == 2 || level == 3) ? privs[level] + '-' + uname : uname
  else
    nil
  end
end

def generate_username55555(firstName, lastName, birthYear, level=0)
  conditions = ((firstName != '' && lastName != '' && birthYear != '') && (birthYear.integer? && birthYear.to_s.length == 4 && birthYear >= 1900 && birthYear <= Time.now.year))
  privs = [ 'user', 'seller', 'manager', 'admin' ]
  users = []
  if (conditions)
    finit = firstName.gsub(/[^A-Za-z]/, '').strip[0]
    lname = lastName.gsub(/[^A-Za-z]/, '').strip
    byear = birthYear.to_s.strip[-2,2]
    uname = finit + lname + byear
    if level == 0 || level == ''
      if users.include? uname
        
        users.include? uname + '_' + n.to_s
    else
      
    end
    (level == 1 || level == 2 || level == 3) ? user << (privs[level] + '-' + uname) : user << uname
  else
    nil
  end
end
