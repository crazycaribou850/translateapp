# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# languages take in "name"

############ ADMIN USER ############

user = User.new
user.email = 'admin@berkeley.edu'
user.password = 'valid_password'
user.password_confirmation = 'valid_password'
user.name = 'Admin'
user.save!

############ LANGUAGES ############

['Chinese', 'French', 'Japanese', 'Malay', 'Spanish', 'Thai', 'Korean', 'Italian', 'Tagalog', 'Laotian', 'German', 'Greek', 'Vietnamese', 'Arabic', 'Hindi' ].each do |name|
  Language.create(
    name: name,
  )
end

############ PLAYLIST ############
# "Name", "Description", "User count (default 0)", "Language ID", "Creater ID (default admin)" and an array of words

####### Chinese #######

[
['Polite Chinese', "List of polite chinese words", 1 , 1, ['Please', 'Thank you very much', 'How much is this', 'How are you doing today']],
['Chinese Food', "Good chinese food", 1, 1, ['Mixed vegetable rice', 'Pork shredded porridge', 'Soup dumplings']],
['Bargain for the Gainz', "Good bargains for bargainable goods!", 1, 1, ['One dollar please', 'I only have this much']]
].each do |name, description, lid, cid, words|
  x = Playlist.create(
    name: name,
    description: description,
    usercount: 0,
    language_id: lid,
    creater_id: cid,
  )
  y = Set.new
  words.each do |w|
    y.add(w)
  end
  x.words = y
  x.save
end

[
['Le French Words', 'French playlist!', 2, 1, ['Hello', 'Mr', 'Good morning', 'Thank you', 'Good bye', 'How is life']],
['La Note', "Some good french food!", 2, 1, ['Snail', 'Baguette','Frog', 'Veal', 'Sausage']]
].each do |name, description, lid, cid, words|
  x = Playlist.create(
    name: name,
    description: description,
    usercount: 0,
    language_id: lid,
    creater_id: cid,
  )
  y = Set.new
  words.each do |w|
    y.add(w)
  end
  x.words = y
  x.save
end

[
['Food and Entertainment!', "Japan food and fun", 3, 1, 45 ['Hello', 'Rice bowl', 'Hot springs', 'Curry', 'Omelette Rice', 'Gyoza', 'Noodles', 'Fried Rice', 'Chicken', 'Playground', 'Electronics', 'Shopping']]
['Asking for directions', "Lost?", 3, 1, 77 ['Hello', 'Apologies', 'Can you help me?', 'I am lost', 'Where is the nearest train station', 'how much is a taxi', 'Have you seen my friend', 'How do I get to akihabara', 'Where is the best ramen around here?', 'Directions']]
['Prepositions', "Basic directions", 3, 1, 21 ['Up', 'Down', 'Left', 'Right', 'Above', 'Beyond', 'Outside', 'Inside', 'Under', 'Around', 'Over', 'Centaur']]
['Time', "For when you don't have a watch", 3, 1, 59 ['What is the time?', 'When is our next meeting?', 'When are you free?', 'What day is it', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday', 'Autumn', 'Spring', 'Winter', 'Summer']]


].each do |name, description, lid, cid, uid, words|
  x = Playlist.create(
    name: name,
    description: description,
    usercount: uid,
    language_id: lid,
    creater_id: cid,
  )
  y = Set.new
  words.each do |w|
    y.add(w)
  end
  x.words = y
  x.save
end

[
['Word di Melayu', 'Malay Playlist!', 4, 1, ['Hello', 'Mr', 'Good morning', 'Thank you', 'Good bye', 'How is life']],
['Makan', "Some amazing french food! in Malay!", 4, 1, ['Snail', 'Baguette','Frog', 'Veal', 'Sausage']]
].each do |name, description, lid, cid, words|
  x = Playlist.create(
    name: name,
    description: description,
    usercount: 0,
    language_id: lid,
    creater_id: cid,
  )
  y = Set.new
  words.each do |w|
    y.add(w)
  end
  x.words = y
  x.save
end

[
['FOOD', 'FOOD!', 5, 1, ['Chicken', 'Duck', 'Beverage', 'Pork', 'Meat', 'corn']],
['Eet', "Some amazing french food! in Spanish!!", 5, 1, ['Snail', 'Baguette','Frog', 'Veal', 'Sausage']]
].each do |name, description, lid, cid, words|
  x = Playlist.create(
    name: name,
    description: description,
    usercount: 0,
    language_id: lid,
    creater_id: cid,
  )
  y = Set.new
  words.each do |w|
    y.add(w)
  end
  x.words = y
  x.save
end
