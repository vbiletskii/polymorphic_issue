
100.times do
  user = User.create
  Users::PersonalInformation.create(user: user, first_name: "Jack", last_name: "User")

  admin = Admin.create
  Admins::PersonalInformation.create(admin: admin, first_name: "Jack", last_name: "Admin")
end
