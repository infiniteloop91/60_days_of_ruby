users = [
  {username: "eric", password: "password"},
  {username: "ericone", password: "passwordone"},
  {username: "erictwo", password: "passwordtwo"},
  {username: "ericthree", password: "passwordthree"},
  {username: "ericfour", password: "passwordfour"}
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
    if  user_record[:username] == username && user_record[:password] == password
      return user_record
    else 
    end

  end 
  return "wrong"
end
#puts users

puts "Welcome to the  vault"
puts "-----------------------"

attempts = 1

while attempts <= 4
  print "username "
  username = gets.chomp.downcase
  print "password "
  password = gets.chomp.downcase
  authvar = auth_user(username,password, users)
  puts authvar
  puts "Press N to quit or press any other key  to continue"
  input = gets.chomp.downcase
  break if input == "n"
  # if input == "n"
  #   break
  # end  
  attempts +=  1
end 
puts "you have exceeded the allowed number attemps" if  attempts >  4
#kill with control c
