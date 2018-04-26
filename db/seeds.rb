# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# languages take in "name"

user = User.new
user.email = 'admin@berkeley.edu'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.save!

['Chinese', 'French', 'Japanese', 'Malay', 'Spanish'].each do |name|
  Language.create(
    name: name,
  )
end

# Playlists take in "name", "description", "user count (default 0)", and "language ID"
[['Polite Chinese', "List of polite chinese words", 1 , 1], ['Rude Chinese', "List of rude chinese words", 1], ['Le French Words', "French playlist!", 2, 1], ['Nihon-go for beginners', "NIHONNESE", 3], 1].each do |name, description, lid, cid|
  Playlist.create(
    name: name,
    description: description,
    usercount: 0,
    language_id: lid,
    creater_id: cid
    words: Set.new
  )
end
