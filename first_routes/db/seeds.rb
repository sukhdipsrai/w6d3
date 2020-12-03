# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'abc@ymail.com')
user2 = User.create(username: 'xyz@ymail.com')
viewer1 = User.create(username: 'candy@ymail.com')
viewer2 = User.create(username: 'apple@ymail.com')


artwork1 = Artwork.create(title: 'Mona Lisa', img_url:'Google.com', artist_id:user1.id)
artwork2 = Artwork.create(title: 'The Count of Monte Cristo', img_url:'booksareart.com', artist_id:user2.id)

artshare1 = ArtworkShare.create(viewer_id: viewer1.id,artwork_id: artwork1.id)
artshare2 = ArtworkShare.create(viewer_id: viewer2.id,artwork_id: artwork2.id)