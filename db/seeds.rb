# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user1 = User.find_or_create_by!(name: "Arya", email: "shbifh@gmail.com")
user2 = User.find_or_create_by!(name: "Tito", email: "asdfgh@gmail.com")
user3 = User.find_or_create_by!(name: "Jacob", email: "xfguikm@gmail.com")
user4 = User.find_or_create_by!(name: "Anjali", email: "poihjnbf@gmail.com")
user5 = User.find_or_create_by!(name: "Anjana", email: "ahdgkau@gmail.com")
user6 = User.find_or_create_by!(name: "Rohan", email: "qsuidae@gmail.com")
user7 = User.find_or_create_by!(name: "Stephen", email: "s12345fg@gmail.com")
user8 = User.find_or_create_by!(name: "Joel", email: "0097uijbftyh@gmail.com")

mistake1 = Mistake.find_or_create_by!(name: "Debugger", severity: 1, description: "Left a debug statement in the code.")
mistake2 = Mistake.find_or_create_by!(name: "Indentation", severity: 1, description: "Incorrect indentations.")
mistake3 = Mistake.find_or_create_by!(name: "Print Statement", severity: 1, description: "Left a print statement in the code.")
mistake4 = Mistake.find_or_create_by!(name: "Variable Name", severity: 1, description: "Poor use of variable name.")

userMistake1 = UserMistake.create!(mistake_id: mistake1.id, user_id: user1.id)
userMistake2 = UserMistake.create!(mistake_id: mistake1.id, user_id: user1.id)
userMistake3 = UserMistake.create!(mistake_id: mistake3.id, user_id: user4.id)
userMistake4 = UserMistake.create!(mistake_id: mistake2.id, user_id: user4.id)
userMistake5 = UserMistake.create!(mistake_id: mistake4.id, user_id: user3.id)
userMistake6 = UserMistake.create!(mistake_id: mistake3.id, user_id: user7.id)