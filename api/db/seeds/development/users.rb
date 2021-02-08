10.times do |n|
  user_id = "userid#{n}"
  user_name = "username#{n}"
  email = "#{user_name}@test.com"
  user = User.find_or_initialize_by(user_id: user_id, user_name: user_name, email: email, activated: true)

   if user.new_record?
     user.password = "password"
     user.save!
   end
end

puts "users = #{User.count}"