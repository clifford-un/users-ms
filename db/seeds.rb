# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
print("================= SeedingDB:  Create dummy users  =======================\n")
User.create(
    user_name: 'dieguischa',
    e_mail: 'me@yahoo.com',
    password: 'HolaMundo',
    phone_number: 322834,
    temp: false
  )
User.create(
    user_name: 'jsbecerra',
    e_mail: 'me@anime.com',
    password: 'HolaMundo',
    phone_number: 3222,
    temp: false
  )
User.create(
    user_name: 'higuaran',
    e_mail: 'me@gay.com',
    password: 'HolaMundo',
    phone_number: 32221,
    temp: false
)

Friend.destroy_all
print("================= SeedingDB:  Making friendship =======================\n")
Friend.create(user_id1:1, user_id2: 2) 
FriendRequest.create(user_id_to:1, user_id_from: 3) 
FriendRequest.create(user_id_to:3, user_id_from: 2) 
