require 'bcrypt'

my_password = BCrypt::Password.create("my password")
my_password1 = BCrypt::Password.create("my password")
my_password2 = BCrypt::Password.create("my password")
my_password == "my password"     #=> true

puts my_password
puts my_password1
puts my_password2

# my_password = BCrypt::Password.new("$2a$12$8gXsxOuCHwclYPJY0dmiZeSIvQv09eaXedFtmfrLIS/mRtFw.VSXS")
# puts my_password == "my password"     #=> true
# # my_password == "not my password" #=> false
