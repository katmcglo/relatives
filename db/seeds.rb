require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# require 'faker'
FamilyMember.destroy_all
User.destroy_all

puts 'Creating two users...'
dareos = User.create(
  email: "dareos@gmail.com",
  password: "123456")
puts "User DareoscCreated"

kat = User.create(
  email: "kat@gmail.com",
  password: "123456")
puts "User Kat Created"
puts "===== Users created"

puts 'Creating relatives...'
grandma_one_img = URI.open("https://alecsoth.com/photography/media/pages/projects/sleeping-by-the-mississippi/4043520684-1551319080/2000_04zl0010-f.jpg")
grandma_one = FamilyMember.new(
    name: "Brünhilde Meier",
    age: 87,
    description: "A tough old goat, but with a loving heart. Famed for her crunchy homemade sauerkraut.",
    kinship: "Grandma",
    user: dareos,
    city: "Munich",
    featured: true,
)
grandma_one.image.attach(io: grandma_one_img, filename: '2000_04zl0010-f.jpg', content_type: 'image/jpg')
grandma_one.save!

grandma_two_img = URI.open("https://alecsoth.com/photography/media/pages/projects/looking-for-love/3205307346-1551319080/1995_06wm0004-010-f.jpg")
grandma_two = FamilyMember.new(
    name: "Stefanie Blue",
    age: 93,
    description: "Knitting savant. Great at life advice. Will melt even the toughest of hearts",
    kinship: "Grandma",
    user: dareos,
    city: "Berlin",
)
grandma_two.image.attach(io: grandma_two_img, filename: '1995_06wm0004-010-f.jpg', content_type: 'image/jpg')
grandma_two.save!

grandma_three_img = URI.open("https://alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/2200033043-1551369195/2017_11zl0006.jpg")
grandma_three = FamilyMember.new(
    name: "Gloria Parker",
    age: 101,
    description: "Persnickety old thing, will destroy you at Scrabble. Has 28 grandchildren already but there's always room for one more.",
    kinship: "Grandma",
    user: dareos,
    city: "Munich",
)
grandma_three.image.attach(io: grandma_three_img, filename: '2017_11zl0006.jpg', content_type: 'image/jpg')
grandma_three.save!

grandma_four_img = URI.open("https://alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/3281594755-1551369195/2018_03zl0073.jpg")
grandma_four = FamilyMember.new(
    name: "Jisoo Chan",
    age: 69,
    description: "Funky art grandma with a house full of treasures.",
    kinship: "Grandma",
    user: dareos,
    city: "Berlin",
    featured: true,
)
grandma_four.image.attach(io: grandma_four_img, filename: '2018_03zl0073.jpg', content_type: 'image/jpg')
grandma_four.save!

grandma_five_img = URI.open("https://alecsoth.com/photography/media/pages/projects/songbook/3936459883-1551319080/11-2013_05md1001-816-bf-copy.jpg")
grandma_five = FamilyMember.new(
    name: "Clara Higgins",
    age: 85,
    description: "Mysterious, rich grandma. Cupboards full of Royal Doulton and Givenchy. Will teach you about the stock market and regale you with tales of her youth.",
    kinship: "Grandma",
    user: dareos,
    city: "Munich",
    featured: true,
)
grandma_five.image.attach(io: grandma_five_img, filename: '11-2013_05md1001-816-bf-copy.jpg', content_type: 'image/jpg')
grandma_five.save!

puts "-> Grandmas created"

father_one_img = URI.open("https://alecsoth.com/photography/media/pages/projects/dog-days-bogota/2662085400-1551319080/2003_02zm0023-05_f.jpg")
father_one = FamilyMember.new(
    name: "Marco Timón",
    age: 52,
    description: "A loving, excellent father. Good at grilling hamburgers, good at making Dad jokes. Will try and one up you whilst talking about his children's achievements.",
    kinship: "Father",
    user: dareos,
    city: "Munich",
    featured: true,
)
father_one.image.attach(io: father_one_img, filename: '2003_02zm0023-05_f.jpg', content_type: 'image/jpg')
father_one.save!

father_two_img = URI.open("https://alecsoth.com/photography/media/pages/projects/sleeping-by-the-mississippi/1056417981-1551319080/2002_03zl0033_f.jpg")
father_two = FamilyMember.new(
    name: "Humberto Pattison",
    age: 56,
    description: "Yoga dad. Rides a bike everywhere and spent a lot of time in Chiang Mai trying to find investors for his start up, 'Psyndr', a dating app for psytrance enthusiasts. Now works at an organic co-op and is getting really into Ecstatic Dance.",
    kinship: "Father",
    user: dareos,
    city: "Berlin",
    featured: true,
)
father_two.image.attach(io: father_two_img, filename: '2002_03zl0033_f.jpg', content_type: 'image/jpg')
father_two.save!

father_three_img = URI.open("https://alecsoth.com/photography/media/pages/projects/niagara/178197265-1551319080/2005_05zl0127-f.jpg")
father_three = FamilyMember.new(
    name: "Haralambos Katsoulis",
    age: 56,
    description: "Haralambos is a great dad and an even better cook. His casseroles are excellent. Make sure you're hungry if you're going to hire him!",
    kinship: "Father",
    user: dareos,
    city: "Munich",
)
father_three.image.attach(io: father_three_img, filename: '2005_05zl0127-f', content_type: 'image/jpg')
father_three.save!
puts "-> Fathers created"

brother_one_img = URI.open("https://alecsoth.com/photography/media/pages/projects/sleeping-by-the-mississippi/450868381-1551319080/2002_03zl0041-bf.jpg")
brother_one = FamilyMember.new(
    name: "Bob Jones",
    age: 40,
    description: "Loves to go to McFit, Sonnenstudio and City Chicken. Broke up with his last girlfriend because she was hindering his gainz. Was named Berlin's Most Ineligible Bachelor 4 years in a row.",
    kinship: "Brother",
    user: dareos,
    city: "Berlin",
)
brother_one.image.attach(io: brother_one_img, filename: '2002_03zl0041-bf.jpg', content_type: 'image/jpg')
brother_one.save!

brother_two_img = URI.open("https://alecsoth.com/photography/media/pages/projects/sleeping-by-the-mississippi/1354703620-1551319080/2002_05zl0028_f.jpg")
brother_two = FamilyMember.new(
    name: "Jarryd Rankin",
    age: 26,
    description: "Slightly menacing, but kind at heart. Will let you borrow DVDs from his collection of WWE Smackdown 1994-2016.",
    kinship: "Brother",
    user: dareos,
    city: "Munich",
)
brother_two.image.attach(io: brother_two_img, filename: '2002_05zl0028_f.jpg', content_type: 'image/jpg')
brother_two.save!

brother_three_img = URI.open("https://alecsoth.com/photography/media/pages/projects/niagara/3886121455-1551319080/2005_05zl0073_f.jpg")
brother_three = FamilyMember.new(
    name: "Jonathan Mole",
    age: 28,
    description: "Just a simple guy, full of fraternal love.",
    kinship: "Brother",
    user: dareos,
    city: "Berlin",
    featured: true,
)
brother_three.image.attach(io: brother_three_img, filename: '2005_05zl0073_f.jpg', content_type: 'image/jpg')
brother_three.save!
puts "-> Brothers created"

mother_one_img = URI.open("https://alecsoth.com/photography/media/pages/projects/sleeping-by-the-mississippi/2615030150-1551319080/2000_04zl0001-f.jpg")
mother_one = FamilyMember.new(
    name: "Belinda Rhodes",
    age: 40,
    description: "Loves a glass of bubbly on a Tuesday. Has a 'Live, Love, Wine' tattoo on her shoulderblade.",
    kinship: "Aunt",
    user: dareos,
    city: "Munich",
)
mother_one.image.attach(io: mother_one_img, filename: '2000_04zl0001-f.jpg', content_type: 'image/jpg')
mother_one.save!

mother_two_img = URI.open("https://alecsoth.com/photography/media/pages/projects/sleeping-by-the-mississippi/2615030150-1551319080/2000_04zl0001-f.jpg")
mother_two = FamilyMember.new(
    name: "Lucretia Moreton",
    age: 43,
    description: "Quirky Goth Mom. Loves making mosaics, crochet, spiders. Lives in a polyamorous pagan lesbian commune with her 14 girlfriends.",
    kinship: "Mother",
    user: dareos,
    city: "Berlin",
)
mother_two.image.attach(io: mother_two_img, filename: '2000_04zl0001-f.jpg', content_type: 'image/jpg')
mother_two.save!

mother_three_img = URI.open("https://alecsoth.com/photography/media/pages/projects/niagara/4092536397-1551319080/2005_5zl0069_f.jpg")
mother_three = FamilyMember.new(
    name: "Becky Button",
    age: 20,
    description: "Had a bit of a difficult start in life and has great empathy and kindness to show for it. A lovely young Mom who can give both motherly and sisterly advice.",
    kinship: "Mother",
    user: dareos,
    city: "Munich",
    featured: true,
)
mother_three.image.attach(io: mother_three_img, filename: '2005_5zl0069_f.jpg', content_type: 'image/jpg')
mother_three.save!
puts "-> Mothers created"

sister_one_img = URI.open("https://alecsoth.com/photography/media/pages/projects/i-know-how-furiously-your-heart-is-beating/3708819925-1551369195/2018_05zl0062.jpg")
sister_one = FamilyMember.new(
    name: "Paige McCartney",
    age: 21,
    description: "A performing arts savant with a bit of a wild side. Booking Paige to be your sister will instantly give you slightly more social clout.",
    kinship: "Sister",
    user: dareos,
    city: "Berlin",
)
sister_one.image.attach(io: sister_one_img, filename: '2018_05zl0062.jpg', content_type: 'image/jpg')
sister_one.save!

sister_two_img = URI.open("https://alecsoth.com/photography/media/pages/projects/niagara/3284371776-1551319080/2005_05zl0090_f.jpg")
sister_two = FamilyMember.new(
    name: "Peggy Sue Waldorf",
    age: 16,
    description: "Peggy Sue is a rambunctious young lass with a lust for life! ",
    kinship: "Sister",
    user: dareos,
    city: "Munich",
)
sister_two.image.attach(io: sister_two_img, filename: '2005_05zl0090_f.jpg', content_type: 'image/jpg')
sister_two.save!
puts "-> Sisters created"

grandpa_one_img = URI.open("https://alecsoth.com/photography/media/pages/projects/last-days-of-w/294980954-1551319080/2005_02zl0142.jpg")
grandpa_one = FamilyMember.new(
    name: "Mark Moses",
    age: 91,
    description: "Mark is a shrewd fellow who will whip your butt at Scrabble with a triple-word-score.",
    kinship: "Grandpa",
    user: dareos,
    city: "Berlin",
    featured: true,
)
grandpa_one.image.attach(io: grandpa_one_img, filename: '2005_02zl0142.jpg', content_type: 'image/jpg')
grandpa_one.save!

grandpa_two_img = URI.open("http://larrysultan.com/archives/wp-content/uploads/2013/06/PFH15_SULTAN_Dad_At_Whiteboard_1984-1000x827.jpg")
grandpa_two = FamilyMember.new(
    name: "Barry Sultan",
    age: 78,
    description: "Don't cross Barry.",
    kinship: "Grandpa",
    user: dareos,
    city: "Munich",
    featured: true,
)
grandpa_two.image.attach(io: grandpa_two_img, filename: 'PFH15_SULTAN_Dad_At_Whiteboard_1984-1000x827.jpg', content_type: 'image/jpg')
grandpa_two.save!

grandpa_three_img = URI.open("http://larrysultan.com/archives/wp-content/uploads/2013/06/ED04_SULTAN_Larry_Hagman_2001-981x1200.jpg")
grandpa_three = FamilyMember.new(
    name: "Larry Hagman",
    age: 86,
    description: "Larry has a wonderful passion for gardening, and a deep running vendetta against Sheryl across the road who once took a cutting of his hydrangeas.",
    kinship: "Grandpa",
    user: dareos,
    city: "Berlin",
    featured: true,
)
grandpa_three.image.attach(io: grandpa_three_img, filename: 'ED04_SULTAN_Larry_Hagman_2001-981x1200.jpg', content_type: 'image/jpg')
grandpa_three.save!
puts "-> Grandpas created"

puts 'Finished!'
