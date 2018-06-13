  Review.destroy_all
  Category.destroy_all
  User.destroy_all

  userAndreia = User.create!(
  email:"andreiadomingues@gmail.com",
  password:"123456",
  first_name:"Andreia",
  last_name: "Domingues",
  bio:"Andreia is a tv host that doesn't like tv and prefers reading, she can be found with a book in hand at the most random places and situations: mountain tops, car repair garages and in the middle of a hurricane ",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135116/Le_Wagon_18.04.27_039.jpg",
  address: "Rua Moeda 7, Lisboa, Portugal"
  )

  userJerome = User.create!(
  email:"jeromedharveng@gmail.com",
  password:"123456",
  first_name:"Jerome",
  last_name: "Harveng",
  bio: "Jerome is a surfer, that travels the world in championships, but while other surfers like to discuss the waves to discuss philosophy (others eventually leave)",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527684917/image_2.png",
  address: "Rua Moeda 7, Lisboa, Portugal"
  )

  userPedro = User.create!(
  email:"pedromarzagao@gmail.com",
  password:"123456",
  first_name:"Pedro",
  last_name: "Marzagão",
  bio:"Pedro is a sky-diving professional who has spent most of his life up in the air. He goes on a new plane everyday but nothings makes him fly like a book",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527683243/Pedro_Headshot_2.jpg",
  address: "Rua Senhora da Glória 104, Lisboa, Portugal"
  )

  userMarta = User.create!(
  email:"marta.keller.pie@gmail.com",
  password:"123456",
  first_name:"Marta",
  last_name: "Keller",
  bio:"Spent a weekend promoting glue for no pay. What gets me going now is supervising the production of basketballs in Hanford, CA. Was quite successful at developing jigsaw puzzles for fun and profit. What gets me going now is implementing dolls in Africa. Spent several months merchandising wooden horses in Ocean City, NJ. Spoke at an international conference about marketing country music in Nigeria.",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/v1527683260/8GaEWuxK_400x400.jpg",
  address: "Rua Moeda 7, Lisboa, Portugal"
  )

  userEmily = User.create!(
  email:"emily@gmail.com",
  password:"123456",
  first_name:"Emily",
  last_name: "Burns",
  bio:"Once had a dream of working on g.i. joes in Miami, FL. Spent college summers lecturing about cellos for the underprivileged. Spent high school summers marketing lint in the aftermarket. Crossed the country getting to know crickets in Cuba. Practiced in the art of analyzing dolls on the black market. Garnered an industry award while getting my feet wet with sheep in Fort Lauderdale, FL.",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135035/Le_Wagon_18.04.27_064.jpg",
  address: "Rua Constantino Fernandes, 2, Lisboa, Portugal"
  )

  userSwen = User.create!(
  email:"swen@gmail.com",
  password:"123456",
  first_name:"Swen",
  last_name: "Kunzel",
  bio:"Prior to my current job I was testing the market for g.i. joes in West Palm Beach, FL. Once had a dream of writing about licorice in Atlantic City, NJ. Spent the better part of the 90's investing in puppets in Mexico. Spent the 80's investing in walnuts in Naples, FL. In 2009 I was licensing electric trains in Washington, DC. Spent 2001-2007 working with pubic lice in Ohio.",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135086/Le_Wagon_18.04.27_016.jpg",
  address: "Rua Manuel Marques, 15, Lisboa, Portugal"
  )

  userAntoine = User.create!(
  email:"antoine@gmail.com",
  password:"123456",
  first_name:"Antoine",
  last_name: "Quellier",
  bio:"Practiced in the art of donating wooden trains for the government. Set new standards for analyzing jump ropes in Africa. Won several awards for donating frisbees in Jacksonville, FL. Spent several months donating teddy bears worldwide. Spent childhood working with pond scum in Orlando, FL. Have a strong interest in buying and selling jigsaw puzzles in Los Angeles, CA.",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135017/Le_Wagon_18.04.27_045.jpg",
  address: "Rua da Misericordia 15, Lisboa Portugal"
  )

  userDavid = User.create!(
  email:"david@gmail.com",
  password:"123456",
  first_name:"David",
  last_name: "Zwagemaker",
  bio:"Set new standards for working on psoriasis in New York, NY. Spent 2001-2005 supervising the production of bassoons in New York, NY. Spent a year merchandising acne in West Palm Beach, FL. Spent 2001-2005 analyzing cannibalism in Hanford, CA. Spent 2001-2007 selling crayon art in Ohio. Spent 2001-2008 writing about hobos in Washington, DC.",
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_100/v1528135049/Le_Wagon_18.04.27_020.jpg",
  address: "Rua da Atalaia 25, Lisboa, Portugal"
  )

puts 'Created Users'

  Category.create!(
  [
    {name: "Alternative Therapy"},
    {name: "Bar"},
    {name: "Cinema"},
    {name: "Concert"},
    {name: "Exhibition"},
    {name: "Festival"},
    {name: "Food Tasting"},
    {name: "Gathering"},
    {name: "Glamour"},
    {name: "Literature"},
    {name: "Museum"},
    {name: "Music Bar"},
    {name: "Park"},
    {name: "Sightseeing"},
    {name: "Shopping"},
    {name: "Sports"},
    {name: "Tour"},
    {name: "Theatre"},
    {name: "Wine Tasting"},
    {name: "Workshop"},

  ])

puts 'Created Categories'

  Activity.create!(
  title: "Eat a Custard Cake in Manteigaria",
  description:  "The formula to success here is very simple and does not need to be locked up away from prying eyes. The artisanal production is the secret of these tarts’ success: the quality of the ingredients used – whole eggs, proper butter rather than margarine, plenty of sugar, and no preservatives – and the process by which the flaky pastry is kneaded and folded by hand, which requires several months’ training to learn properly. The result is a crispy, crunchy case and a cream filling with just the right amount of sugar.",
  address: "Rua do Loreto 2, 1200-108 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 1.2,
  state: 1,
  category: Category.find_by_name("Food Tasting"),
  user: userDavid,
  duration: 10,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138801/Amanteigaria.jpg",
  payable: true
  )

  Activity.create!(
  title: "Sunset at Miradouro da Graça",
  description: "The Graca lookout in the Graca Lisbon neighborhood is quite popular, both for the easy-to-find location and proximity to the St. George Castle Lisbon (Castelo de Sao Jorge). It is one of our favorite miradouros for wide city views and watching the sunset in Lisbon.",
  address: "Calçada da Graça, 1100-265 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 0,
  state: 1,
  category: Category.find_by_name("Sightseeing"),
  user: userDavid,
  duration: 20,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138806/Miradouro-da-Grac%CC%A7a.jpg",
  payable: false
  )

  Activity.create!(
  title: "Bifana at O Trevo",
  description: "A bifana is truly a thing of wonder and a Portuguese treasure. Thinly pounded pork cutlets are marinated in spices and white wine and then fried and piled onto a beautiful, white portuguese bun. You then slather it in down and dirty yellow mustard and/or hot oil that will be provided. It sounds and looks really simple and even a bit boring but it's anything but. You won't find a better bifana than the ones at  O Trevo and it's really cheap. Antoine's Bourdain raved about it on one of his 'No Reservations' episodes",
  address: "Praça Luís de Camões 48, 1200-108 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 1.8,
  state: 1,
  category: Category.find_by_name("Food Tasting"),
  user: userPedro,
  duration: 15,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138805/o-trevo.jpg",
  payable: true
  )

  Activity.create!(
  title: "Museu do Azulejo",
  description: "A must-see for people interested in the history and design of ceramic tiles, this specialty museum houses a splendid collection of decorative tiles dating from the 15th century to the present. Come inside and let the tiles do the talk, while get acquainted with one of the portuguese creations most appreciated by tourists",
  address: "Rua Madre de Deus 4, Lisbon 1900-312, Portugal",
  latitude: 0,
  longitude: 0,
  price: 5,
  state: 1,
  category: Category.find_by_name("Museum"),
  user: userJerome,
  duration: 40,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138807/museu-do-azulejo.jpg",
  payable: true
  )

  Activity.create!(
  title: "Lisbon Oceanarium",
  description: "Opened in 1998, the Oceanário was the centerpiece of the XXth Century's last World Fair, themed 'The Oceans, a Heritage for the Future', and eternally binds Lisbon to the Oceans.MissionThe Oceanário’s mission is to promote knowledge of the oceans and bring up the public about the duty of protecting natural heritage, through changing their daily habits.While walking through impressive and unforgettable exhibits, visitors are encouraged to learn fascinating things about the oceans and, more importantly, how to make decisions in their daily lives that actively promote the conservation of nature.",
  address: "Esplanada D. Carlos I | Doca dos Olivais, Lisbon 1990-005, Portugal",
  latitude: 0,
  longitude: 0,
  price: 15 ,
  state: 1,
  category: Category.find_by_name("Exhibition"),
  user: userAndreia,
  duration: 80,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138795/Oceanario-Lisboa.jpg",
  payable: true
  )

  Activity.create!(
  title: "The Lisbon Pub Crawl",
  description: "Spend a night out in Lisbon and meet local residents and fellow travelers on this pub crawl that introduces you to one of the best nightlife neighborhoods in the city. Visit three bars where you’ll enjoy a welcome drink at each, and finish the tour at a club with VIP entrance included.",
  address: "Esplanada D. Carlos I | Doca dos Olivais, Lisbon 1990-005, Portugal",
  latitude: 0,
  longitude: 0,
  price: 15 ,
  state: 1,
  category: Category.find_by_name("Bar"),
  user: userSwen,
  duration: 120,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138814/pub-crawl-lisbon-destination-tours-2.jpg",
  payable: true,
  )

  Activity.create!(
  title: "Explore the Tropical Botanical Garden",
  description: "The Tropical Botanical Garden in Belém (sometimes referred to as the Jardim Museu Agricola Tropical) is a lush oasis of exotic flora set in landscaped gardens that surround the 18th-century Palácio dos Condes da Calheta, these days used as research centre of the Institute for Tropical Sciences. Visitors can appreciate an array of tropical and subtropical plants, and imposing date palm, fig and monkey puzzle trees. Kids can feed the ducks on the lake and play hide and seek under the garden's verdant canopy. The palace regularly hosts scientific exhibitions about the research on natural resources, people and history of tropical regions.",
  address: "Largo dos Jerónimos, Lisbon, 1400-209",
  latitude: 0,
  longitude: 0,
  price: 2 ,
  state: 1,
  category: Category.find_by_name("Sightseeing"),
  user: userAndreia,
  duration: 45,
  remote_picture_url: "http://res.cloudinary.com/pmarzagao/image/upload/c_scale,w_720/v1528138808/jardim-botanico.jpg",
  payable: true,
  )

  Activity.create!(
  title: "Buy a vintage-style hat at Chapelaria Azevedo",
  description: "A leftover from the days when a gentleman did not leave the house without his hat, and the era when Praça D. Pedro IV [Rossio square] was the hub of hat makers and milliners, by royal decree, the Chapelaria Azevedo Rua continues today, keeping abreast with new generations and trends. Today it offers an eclectic mix of classic and contemporary hat models – in addition to the experience of shopping in what looks like a cathedral, albeit a profane cathedral of the hat – with its wooden furnishings with glass doors filled with wondrous items from floor to ceiling. Behind the shop, where hats were once made, one can still find the chimney through which the fumes and vapours resulting from the moulding of felt were released. The most frequently told story in the shop is of how the founder fled phylloxera in 1886, a disastrous wine harvest forcing Manuel Aquino de Azevedo Rua to leave wine-making in his rural home behind and try his luck in the country’s capital. We hereby challenge the visitor to locate, inside the shop, a discreetly exhibited bottle of wine. For that is the story it tells, without making an explicit reference to the shop’s origins. The shop is peopled by many other stories; the hat is, after all, a social emblem loaded with symbolism and interpretations. It was not so long ago that we distinguished between rich and poor, and various professions, just by the hat the people in question wore. Only a few vestiges remain of that symbolism, but lots of variety: festive headpieces for bridal parties; the noble top hat, be it small or tall, for diplomats; the democratic beret; the protective woollen hat; the bowler; the Panama; the colonial war helmet; and the youthful cap. But the shop doesn’t stock just hats – it also sells gloves, walking sticks and umbrellas. If you don’t know what a Portuguese tricorne is then feel free to ask here, as the shop is a Portuguese reference in making this three-cornered hat worn by the traditional horseback bullfighter. So much so, that one particular memory, or perhaps a legend, persists in the story told by José Manuel, who owned the shop in the 1990s: I remember my father watching bullfights on television and whenever a tricorne fell to the ground he would shout: ‘Stamp on it, bull. Stamp on it!’ Given that a new one would most probably have to be ordered from Azevedo Rua… - Step on it, bull. Step on it!",
  address: "Praça D. Pedro IV 73, Lisbon",
  latitude: 0,
  longitude: 0,
  price: 35,
  state: 1,
  category: Category.find_by_name("Shopping"),
  user: userAntoine,
  duration: 20,
  remote_picture_url: "https://cache.mrporter.com/images/journal/7e9c15b3-3744-45c0-94f6-d3ecb17b9a25/w1000_q65.jpg",
  payable: true,
  )

  Activity.create!(
  title: "Pair of handmade gloves at Luvaria Ulisses",
  description: "amous for the quality of its gloves and the tiny dimensions of the shop, the Luvaria Ulisses can be likened to a pearl – because of its concentrated value. A feeling of success is easily achieved in the shop – just three customers and it’s full to the brim. The limited space is, however, all the space necessary for the shop’s variations on a theme: the glove. Made-to-measure gloves in seven different original sizes that can then be adapted to the customer’s hands. In fine sheepskin, with a bow on the back of the hand, or with a button, embroidery, applications – the variations are endless. Even so, a glove is no longer what it was in the 1920s when Ulisses opened. That was a time when a lady would not be seen outside the house without her gloves. Even in the 1970s, when Carlos Carvalho, one of the current owners, entered the business as an assistant, there were still five glove shops in the Chiado district alone. After the Revolution in 1974, using gloves took on a new social significance and the other glove shops gradually disappeared. Ulisses has remained thanks to its clientele that remains loyal to the quality and personalised service it offers.",
  address: "Rua do Carmo 87-A",
  latitude: 0,
  longitude: 0,
  price: 50,
  state: 1,
  category: Category.find_by_name("Glamour"),
  user: userEmily,
  duration: 30,
  remote_picture_url: "http://images-cdn.impresa.pt/visao/2016-07-21-mj12173.jpg-1/original/mw-860",
  payable: true,
  )

  Activity.create!(
  title: "Oversee Lisbon at Miradouro São Pedro de Alcantara",
  description: "One of the delights of exploring Lisbon is discovering the city's miradouros (viewpoints) – purpose-built terraces usually designed around landscaped gardens and more often than not a handy kiosk-café. Located at various points throughout the capital, these attractive belvederes are sited specifically to take advantage of Lisbon's most striking scenic views, always dramatically enhanced given its hilly topography. A particularly absorbing panorama can be enjoyed from the Miradouro de Sao Pedro de Alcântara. This sweeping veranda is set near the top of the city's Bairro Alto district, near Principe Real, and affords sightseers with a picture postcard aspect of eastern Lisbon. The most obvious landmark is the Castelo de Sao Jorge, but a useful tiled map placed against the balustrade helps you pinpoint other places of interest including São Vicente de Fora and the cathedral.",
  address: "Rua de São Pedro de Alcântara, Lisbon, 1100",
  latitude: 0,
  longitude: 0,
  price: 0,
  state: 1,
  category: Category.find_by_name("Sightseeing"),
  user: userPedro,
  duration: 30,
  remote_picture_url: "https://www.lisbonlux.com/images/lisbon/miradouro-de-sao-pedro-alcantara.jpg",
  payable: false,
  )

  Activity.create!(
  title: "Have a cocktail at Cinco Lounge",
  description: "Fancy a cocktail while lingering in Lisbon? Then you need to head to the Cinco Lounge, one of the city’s smartest nightspots, located in Práncipe Real. Drinks win points for originality, blending premium spirits and fresh fruits and there’s over a hundred to choose between, both tried and tested classics and more inventive creations. The initial press buzz about this place focused on such flashy concoctions as the $235 Black Amex cocktail, but their reputation is such that they no longer need to rely on such gimmicks. Service is super slick and the decor is airy yet striking with floor-to-ceiling windows and glass-topped tables; the atmosphere is refreshingly stylish and grown up.",
  address: "Rua Ruben A. Leitão 17-A Príncipe Real 1200-329 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 10,
  state: 1,
  category: Category.find_by_name("Bar"),
  user: userJerome,
  duration: 60,
  remote_picture_url: "http://images-cdn.impresa.pt/activa/2017-04-19-Cinco-Lounge.jpg/original",
  payable: true,
  )

  Activity.create!(
  title: "Portuguese Cooking Lesson in Lisbon",
  description: "Shop for fresh Portuguese produce at a traditional neighbourhood market in the morning, and prepare a delicious 3-course meal with a professional chef in the evening!",
  address: "Rua da Rosa 1, Lisbon",
  latitude: 0,
  longitude: 0,
  price: 50,
  state: 1,
  category: Category.find_by_name("Food Tasting"),
  user: userEmily,
  duration: 240,
  remote_picture_url: "https://www.trymykitchen.com/wp-content/uploads/2017/12/DSC_0244_12.jpeg",
  payable: true,
  )

  Activity.create!(
  title: "Museum, amphitheater and garden at Gulbenkian",
  description: "Music Season with Gulbenkian Orchestra and Choir, permanent exhibitions of the collections of Calouste Gulbenkian Museum and Modern Art Centre. Also temporary exhibitions, symposia and conferences. The immense garden of lush greenery is fresh and inviting, pieces of sculpture spread between paths and lawns.",
  address: "Gulbenkian Avenida de Berna 45, Lisbon",
  latitude: 0,
  longitude: 0,
  price: 0,
  state: 1,
  category: Category.find_by_name("Museum"),
  user: userAndreia,
  duration: 120,
  remote_picture_url: "https://images.graph.cool/v1/cj6c28vh912680101ozc2paxj/cj80e0fsc00190160mfqdlxnw/0x0:1400x915/960x960/294_mu_ch_Gulbenkian_ext_01.jpg",
  payable: false,
  )

  Activity.create!(
  title: "Private Street Art Walk in Lisbon",
  description: "Discover amazing street art hidden in the most improbable places! This private walk takes you through Lisbon’s oldest neighbourhoods to some of the city’s most alternative spots.",
  address: "Calçada do Combro 2, 1200-012 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 34,
  state: 1,
  category: Category.find_by_name("Tour"),
  user: userEmily,
  duration: 180,
  remote_picture_url: "https://www.likealocalguide.com/media/cache/30/ed/30ed122ac92b1debce09c4ec841d26fe.jpg",
  payable: true,
  )

  Activity.create!(
  title: "Esplanade, garden and a view over Lisbon",
  description: "It’s a peaceful romantic garden from the XIX century that is somewhat hidden. It has a fantastic view over Liberdade Avenue, São Pedro de Alcântara Hill, Downtown and Tejo River. By the way, the Torel Garden is situated on top of one of the seven hills of Lisbon.",
  address: "Jardim do Torel, R. Júlio de Andrade Lisbon",
  latitude: 0,
  longitude: 0,
  price: 0,
  state: 1,
  category: Category.find_by_name("Sightseeing"),
  user: userAndreia,
  duration: 30,
  remote_picture_url:"https://i.pinimg.com/originals/4e/32/8e/4e328e75195911f55f009ae60fb71037.jpg",
  payable: false,
  )

  Activity.create!(
  title: "Indoor Rock Climbing",
  description: "Vértigo is the biggest indoor climbing center of Lisbon, targeted at those who looking for an alternative way to keep in shape with adrenaline, without the hazards and risks of outdoors climbing or those that wish to decompress after a long week of work and demo day presentations. It's guaranteed you will leave with a clear head (or at least a broken arm).",
  address: "Avenida Infante Dom Henrique, 1950-408 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 25,
  state: 1,
  category: Category.find_by_name("Sports"),
  user: userJerome,
  duration: 70,
  remote_picture_url:"http://res.cloudinary.com/pmarzagao/image/upload/v1528895123/indoorclimbing.jpg",
  payable: true,
  )

  Activity.create!(
  title: "Book Launch by António Muñoz Molina",
  description: "António Muñoz Molina will be present at Fábrica Moderna to launch his book, finalist of Man Booker Prize 2018. This is the chance to make conversation with the author and get that authograph for your aunt - the number two fan of António after you, in our trendy space. Admission includes copy of the book.",
  address: "R. Fábrica de Material de Guerra 1, 1950-128 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 10,
  state: 1,
  category: Category.find_by_name("Literature"),
  user: userEmily,
  duration: 60,
  remote_picture_url:"http://res.cloudinary.com/pmarzagao/image/upload/v1528895968/fabricabracodeprata.jpg",
  payable: true,
  )

  Activity.create!(
  title: "Shakespeare in 90 minutes",
  description: "Teatro Meridional is presenting this humurous compilation of all of Shakespeare's works in just 90 minutes. This is the opportunity to revisit the most famous plays of one of the most famous writers of all time, without the dust and the boredoom. Fun guranteed!",
  address: "Avenida Infante Dom Henrique, 1950-408 Lisboa",
  latitude: 0,
  longitude: 0,
  price: 30,
  state: 1,
  category: Category.find_by_name("Theatre"),
  user: userPedro,
  duration: 90,
  remote_picture_url:"http://res.cloudinary.com/pmarzagao/image/upload/v1528896657/teatromeridional.jpg",
  payable: true,
  )

puts 'Created Activities'
#Pedro following these user

userPedro.follow(userAntoine)
userPedro.follow(userAndreia)
userPedro.follow(userJerome)
userPedro.follow(userEmily)

#Pedro's followers

userDavid.follow(userPedro)
userSwen.follow(userPedro)
userEmily.follow(userPedro)
userJerome.follow(userPedro)

#Andreia is following these users

userAndreia.follow(userAntoine)
userAndreia.follow(userPedro)
userAndreia.follow(userJerome)
userAndreia.follow(userEmily)

#Andreia's followers

userDavid.follow(userAndreia)
userSwen.follow(userAndreia)
userEmily.follow(userAndreia)
userJerome.follow(userAndreia)

#Jerome is following these users

userJerome.follow(userAntoine)
userJerome.follow(userPedro)
userJerome.follow(userAndreia)
userJerome.follow(userEmily)

#Jerome's followers

userDavid.follow(userJerome)
userSwen.follow(userJerome)
userEmily.follow(userJerome)
userJerome.follow(userJerome)


puts 'Created Followers and Followees'

20.times do
 activity = Activity.all.sample
 if activity.price == 0
    state = "paid"
  else
    state = "pending"
  end


 Booking.create!(
  user: User.all.sample,
  activity: activity,
  state: state,
  )

end

puts 'Created Bookings'

100.times do

  Review.create!(

    rating: rand(3..5),
    content: "This is a review sample",
    booking: Booking.all.sample,
  )

end

