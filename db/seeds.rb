# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Review.destroy_all
  Category.destroy_all
  User.destroy_all

  User.create!(
  email:"andreiadomingues@gmail.com",
  password:"123456",
  first_name:"Andreia",
  last_name: "Domingues",
  bio:"Andreia is a tv host that doesn't like tv and prefers reading, she can be found with a book in hand at the most random places and situations: mountain tops, car repair garages and in the middle of a hurricane ",
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135116/Le_Wagon_18.04.27_039.jpg",
  address: "Rua Moeda 7, Lisboa, Portugal"
  )

  User.create!(
  email:"jeromedharveng@gmail.com",
  password:"123456",
  first_name:"Jerome",
  last_name: "Harveng",
  bio: "Jerome is a surfer, that travels the world in championships, but while other surfers like to discuss the waves to discuss philosophy (others eventually leave)",
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/v1527684917/image_2.png",
  address: "Rua Moeda 7, Lisboa, Portugal"
  )

  User.create!(
  email:"pedromarzagao@gmail.com",
  password:"123456",
  first_name:"Pedro",
  last_name: "Marzagão",
  bio:"Pedro is a sky-diving professional who has spent most of his life up in the air. He goes on a new plane everyday but nothings makes him fly like a book",
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/v1527683243/Pedro_Headshot_2.jpg",
  address: "Rua Senhora da Glória 104, Lisboa, Portugal"
  )

  User.create!(
  email:"marta.keller.pie@gmail.com",
  password:"123456",
  first_name:"Marta",
  last_name: "Keller",
  bio:"Spent a weekend promoting glue for no pay. What gets me going now is supervising the production of basketballs in Hanford, CA. Was quite successful at developing jigsaw puzzles for fun and profit. What gets me going now is implementing dolls in Africa. Spent several months merchandising wooden horses in Ocean City, NJ. Spoke at an international conference about marketing country music in Nigeria.",
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/v1527683260/8GaEWuxK_400x400.jpg",
  address: "Rua Moeda 7, Lisboa, Portugal"
  )

  User.create!(
  email:"emily@gmail.com",
  password:"123456",
  first_name:"Emily",
  last_name: "Burns",
  bio:"Once had a dream of working on g.i. joes in Miami, FL. Spent college summers lecturing about cellos for the underprivileged. Spent high school summers marketing lint in the aftermarket. Crossed the country getting to know crickets in Cuba. Practiced in the art of analyzing dolls on the black market. Garnered an industry award while getting my feet wet with sheep in Fort Lauderdale, FL.",
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135035/Le_Wagon_18.04.27_064.jpg",
  address: "Rua Constantino Fernandes, 2, Lisboa, Portugal"
  )

  User.create!(
  email:"swen@gmail.com",
  password:"123456",
  first_name:"Swen",
  last_name: "Kunzel",
  bio:"Prior to my current job I was testing the market for g.i. joes in West Palm Beach, FL. Once had a dream of writing about licorice in Atlantic City, NJ. Spent the better part of the 90's investing in puppets in Mexico. Spent the 80's investing in walnuts in Naples, FL. In 2009 I was licensing electric trains in Washington, DC. Spent 2001-2007 working with pubic lice in Ohio.",
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135086/Le_Wagon_18.04.27_016.jpg",
  address: "Rua Manuel Marques, 15, Lisboa, Portugal"
  )

  User.create!(
  email:"antoine@gmail.com",
  password:"123456",
  first_name:"Antoine",
  last_name: "Quellier",
  bio:"Practiced in the art of donating wooden trains for the government. Set new standards for analyzing jump ropes in Africa. Won several awards for donating frisbees in Jacksonville, FL. Spent several months donating teddy bears worldwide. Spent childhood working with pond scum in Orlando, FL. Have a strong interest in buying and selling jigsaw puzzles in Los Angeles, CA.",
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135017/Le_Wagon_18.04.27_045.jpg",
  address: "Rua da Misericordia 15, Lisboa Portugal"
  )

  User.create!(
  email:"david@gmail.com",
  password:"123456",
  first_name:"David",
  last_name: "Zwagemaker",
  bio:"Set new standards for working on psoriasis in New York, NY. Spent 2001-2005 supervising the production of bassoons in New York, NY. Spent a year merchandising acne in West Palm Beach, FL. Spent 2001-2005 analyzing cannibalism in Hanford, CA. Spent 2001-2007 selling crayon art in Ohio. Spent 2001-2008 writing about hobos in Washington, DC.",
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135049/Le_Wagon_18.04.27_020.jpg",
  address: "Rua da Atalaia 25, Lisboa, Portugal"
  )

puts 'Created Users'

  Category.create!(
  [
    {name: "Cinema"},
    {name: "Festival"},
    {name: "Restaurant"},
    {name: "Cafe"},
    {name: "Theatre"},
    {name: "Dance"},
    {name: "Workshop"},
    {name: "Wine Tasting"},
    {name: "Conference"},
    {name: "Concert"},
    {name: "Meetup"},
    {name: "Clubbing"},
    {name: "Music Bar"},
    {name: "Literature"},
    {name: "Exhibition"},
    {name: "Museum"},
    {name: "Tour"},
    {name: "Food Tasting"},
    {name: "Fair"},
    {name: "Market"},
    {name: "Park"},
    {name: "Children"},
    {name: "Alternative Therapy"},
    {name: "Brunch"},
    {name: "Birdwatching"},
    {name: "Sightseeing"},
    {name: "Snack"}
  ])

puts 'Created Categories'

  Activity.create!(
  title: "Eat a Custard Cake in Manteigaria",
  description:  "The formula to success here is very simple and does not need to be locked up away from prying eyes. The artisanal production is the secret of these tarts’ success: the quality of the ingredients used – whole eggs, proper butter rather than margarine, plenty of sugar, and no preservatives – and the process by which the flaky pastry is kneaded and folded by hand, which requires several months’ training to learn properly. The result is a crispy, crunchy case and a cream filling with just the right amount of sugar.",
  address: "Rua do Loreto 2, 1200-108 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 100,
  state: 1,
  category: Category.all.sample,
  user: User.all.sample,
  duration: 10,
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138801/Amanteigaria.jpg"
  )

  Activity.create!(
  title: "Sunset at Miradouro da Graça",
  description: "The Graca lookout in the Graca Lisbon neighborhood is quite popular, both for the easy-to-find location and proximity to the St. George Castle Lisbon (Castelo de Sao Jorge). It is one of our favorite miradouros for wide city views and watching the sunset in Lisbon.",
  address: "Calçada da Graça, 1100-265 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 0,
  state: 1,
  category: Category.all.sample,
  user: User.all.sample,
  duration: 20,
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138806/Miradouro-da-Grac%CC%A7a.jpg"
  )

  Activity.create!(
  title: "Bifana at O Trevo",
  description: "A bifana is truly a thing of wonder and a Portuguese treasure. Thinly pounded pork cutlets are marinated in spices and white wine and then fried and piled onto a beautiful, white portuguese bun. You then slather it in down and dirty yellow mustard and/or hot oil that will be provided. It sounds and looks really simple and even a bit boring but it's anything but. You won't find a better bifana than the ones at  O Trevo and it's really cheap. Antoine's Bourdain raved about it on one of his 'No Reservations' episodes",
  address: "Praça Luís de Camões 48, 1200-108 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 180,
  state: 1,
  category: Category.all.sample,
  user: User.all.sample,
  duration: 15,
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138805/o-trevo.jpg"
  )

  Activity.create!(
  title: "Museu do Azulejo",
  description: "A must-see for people interested in the history and design of ceramic tiles, this specialty museum houses a splendid collection of decorative tiles dating from the 15th century to the present.",
  address: "Rua Madre de Deus 4, Lisbon 1900-312, Portugal",
  latitude: 0,
  longitude: 0,
  price: 500,
  state: 1,
  category: Category.all.sample,
  user: User.all.sample,
  duration: 60,
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138807/museu-do-azulejo.jpg"
  )

  Activity.create!(
  title: "Lisbon Oceanarium",
  description: "Opened in 1998, the Oceanário was the centerpiece of the XXth Century's last World Fair, themed 'The Oceans, a Heritage for the Future', and eternally binds Lisbon to the Oceans.MissionThe Oceanário’s mission is to promote knowledge of the oceans and bring up the public about the duty of protecting natural heritage, through changing their daily habits.While walking through impressive and unforgettable exhibits, visitors are encouraged to learn fascinating things about the oceans and, more importantly, how to make decisions in their daily lives that actively promote the conservation of nature.",
  address: "Esplanada D. Carlos I | Doca dos Olivais, Lisbon 1990-005, Portugal",
  latitude: 0,
  longitude: 0,
  price: 1500 ,
  state: 1,
  category: Category.all.sample,
  user: User.all.sample,
  duration: 90,
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138795/Oceanario-Lisboa.jpg"
  )

  Activity.create!(
  title: "The Lisbon Pub Crawl",
  description: "Spend a night out in Lisbon and meet local residents and fellow travelers on this pub crawl that introduces you to one of the best nightlife neighborhoods in the city. Visit three bars where you’ll enjoy a welcome drink at each, and finish the tour at a club with VIP entrance included.",
  address: "Esplanada D. Carlos I | Doca dos Olivais, Lisbon 1990-005, Portugal",
  latitude: 0,
  longitude: 0,
  price: 1500 ,
  state: 1,
  category: Category.all.sample,
  user: User.all.sample,
  duration: 120,
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138814/pub-crawl-lisbon-destination-tours-2.jpg"
  )

  Activity.create!(
  title: "Explore the Tropical Botanical Garden",
  description: "The Tropical Botanical Garden in Belém (sometimes referred to as the Jardim Museu Agricola Tropical) is a lush oasis of exotic flora set in landscaped gardens that surround the 18th-century Palácio dos Condes da Calheta, these days used as research centre of the Institute for Tropical Sciences. Visitors can appreciate an array of tropical and subtropical plants, and imposing date palm, fig and monkey puzzle trees. Kids can feed the ducks on the lake and play hide and seek under the garden's verdant canopy. The palace regularly hosts scientific exhibitions about the research on natural resources, people and history of tropical regions.",
  address: "Largo dos Jerónimos, Lisbon, 1400-209",
  latitude: 0,
  longitude: 0,
  price: 200 ,
  state: 1,
  category: Category.all.sample,
  user: User.all.sample,
  duration: 45,
  picture: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138808/jardim-botanico.jpg"
  )


puts 'Created Activities'
  # Activity.create! (
  # title: ""
  # description: "",
  # address: ""
  # latitude: 0,
  # longitude: 0,
  # price:  ,
  # state: 1,
  # category_id: Category.where(name: "").id,,
  # user_id: User.sample,
  # duration:
  # )
