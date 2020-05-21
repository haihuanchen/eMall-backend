# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Item.destroy_all
Review.destroy_all



sam = User.create(
    username: 'samchen',
    password: "123",
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
    profileImage: 'https://img.freepik.com/free-vector/businessman-profile-cartoon_18591-58479.jpg?size=338&ext=jpg'
)
jenna =User.create(
    username: 'jenna',
    password: "123",
    email: Faker::Internet.email,
    address: Faker::Address.full_address,
    profileImage: 'https://cdn.pixabay.com/photo/2017/06/13/12/53/profile-2398782_1280.png'
)

10.times do 
    User.create(
        username: Faker::Internet.username,
        password: "123",
        email: Faker::Internet.email,
        address: Faker::Address.full_address,
        profileImage: 'none'
    )
end

item1 = Item.create(title: 'iPhone 11 Pro', description: 'Apple iPhone 11 Pro - 64GB - Space Gray', price: 759.99, quantity: 1, category: 'electronics', image: 'https://i.ebayimg.com/images/g/o2sAAOSwWapehQSu/s-l1600.jpg',condition: 'barely used',user_id: sam.id)
item2 = Item.create(title: 'Canon EOS 90D', description: 'DSLR Camera 2 Lens Kit w/ 18-135mm IS USM + 55-250mm IS STM Bundle', price: 1799.00, quantity: 1, category: 'electronics', image: 'https://i.ebayimg.com/images/g/K5AAAOSwzwBd046l/s-l1600.jpg',condition: 'new',user_id: jenna.id)
item3 = Item.create(title: 'iRobot Roomba 675', description: 'Robot Vacuum-Wi-Fi Connectivity, Works with Alexa', price: 249.99, quantity: 1, category: 'home', image: 'https://i.ebayimg.com/images/g/2gMAAOSw2wZd4O6d/s-l1600.jpg',condition: 'pre-owned',user_id: User.all.sample.id)
item4 = Item.create(title: 'Digital Deep Air Fryer', description: 'Customized Preset&Pause Function Timer Oil-less Healthy', price: 35.99, quantity: 1, category: 'home', image: 'https://i.ebayimg.com/images/g/g8oAAOSwv9Zc0977/s-l1600.jpg',condition: 'brand new',user_id: User.all.sample.id)
item5 = Item.create(title: 'Batman Masterpiece Action Figure', description: 'Movie Justice League Batman 1/6 scale figure', price: 259.99, quantity: 1, category: 'toy', image: 'https://i.ebayimg.com/images/g/VtIAAOSw7k9dzXPz/s-l1600.jpg',condition: 'brand new',user_id: User.all.sample.id)
item6 = Item.create(title: 'Rocket’s Mewtwo', description: 'Holo Rare 14/132 Gym Challenge Pokémon Card', price: 15.99, quantity: 1, category: 'toy', image: 'https://i.ebayimg.com/images/g/MsAAAOSwT0leuwoo/s-l1600.jpg',condition: 'brand new',user_id: User.all.sample.id)
item7 = Item.create(title: '2009 Cannondale Road Bicycle', description: 'Six Carbon 1 Compact Dura Ace/ Ultegra Road Bike 54cm', price: 909.99, quantity: 1, category: 'sporting', image: 'https://i.ebayimg.com/images/g/I5YAAOSwqDheq1ir/s-l1600.jpg',condition: 'used',user_id: User.all.sample.id)
item8 = Item.create(title: 'PowerBilt Golf Clubs', description: 'EX-550 Hybrid Iron Set (4-PW, SW)', price: 185.99, quantity: 1, category: 'sporting', image: 'https://i.ebayimg.com/images/g/S3AAAOSwXnxcUig4/s-l1600.jpg',condition: 'barely used',user_id: User.all.sample.id)
item9 = Item.create(title: 'Gucci Dionysus Convertible Tote', description: 'Matelasse Leather Large', price: 1299.99, quantity: 1, category: 'fashion', image: 'https://i.ebayimg.com/images/g/rdIAAOSw2tFeXmkw/s-l1600.jpg',condition: 'pre-owned',user_id: jenna.id)
item10 = Item.create(title: 'Rolex Submariner Watch', description: 'Auto 40mm Steel Mens Oyster Bracelet Watch Date 16800', price: 7950.00, quantity: 1, category: 'fashion', image: 'https://i.ebayimg.com/images/g/aG8AAOSwY3Vecola/s-l1600.jpg',condition: 'pre-owned',user_id: User.all.sample.id)
item11 = Item.create(title: 'Nike AIR MAX 97 Sneakers', description: 'Mens Shoes Black Anthracite Thunder Triple 921826-015 White NIB', price: 159.99, quantity: 1, category: 'fashion', image: 'https://i.ebayimg.com/images/g/wO4AAOSw1Aleq0af/s-l1600.jpg',condition: 'brand new',user_id: User.all.sample.id)
item12 = Item.create(title: 'Apple Macbook Pro 15.4 inch', description: '16GB Ram 512GB SSD - Mgxc2ll/a - Mid-2014', price: 1049.99, quantity: 1, category: 'electronics', image: 'https://i.ebayimg.com/images/g/80IAAOSwBp1eqF-O/s-l1600.jpg',condition: 'pre-owned',user_id: User.all.sample.id)
item13 = Item.create(title: 'Gaming Wireless Headphones', description: 'SteelSeries Arctis 7 - Lossless Wireless Gaming Headset with DTS Headphone:X v2.', price: 129.99, quantity: 1, category: 'electronics', image: 'https://i.ebayimg.com/images/g/xokAAOSw-~tdwExM/s-l1600.jpg',condition: 'new',user_id: User.all.sample.id)
 
50.times do 
    Review.create(
        title: Faker::Book.title,
        content: Faker::Quote.famous_last_words,
        rating: rand(1...10),
        user_id: User.all.sample.id,
        item_id: Item.all.sample.id
    )
end
