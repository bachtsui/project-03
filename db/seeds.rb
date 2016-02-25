#Destroy Functions to Prevent Duplicate Data

Game.destroy_all

### User Seed Data ######
User.create({
	first_name: "Doug",
	last_name: "Tsui",
	email: "dt@gmail.com",
	password: "123456",
	password_confirmation: "123456",
	spent: 0.00
})


### Game Seed Data ####
Game.create({
	name: "Super Mario RPG",
	company: "Square",
	publisher: "Nintendo",
	image: "http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/05/a0/05a0b0985135bad0de21f156adb0b8d6.png?itok=v9OfQkZ6",
	release_date: "May 13, 1996"
})

Game.create({
	name: "Jet Set Radio",
	company: "Smilebit",
	publisher: "Sega",
	image: "http://static.tvtropes.org/pmwiki/pub/images/JetGrindRadio_cover.jpg",
	release_date: "October 30, 2000"
})

Game.create({
	name: "Devil May Cry 3",
	company: "Capcom",
	publisher: "Capcom",
	image: "http://static.giantbomb.com/uploads/original/0/2130/1369577-devil_may_cry_3_dvd_ntsc_front.jpg",
	release_date: "February 17, 2005"
})

Game.create({
	name: "Street Fighter II",
	company: "Capcom",
	publisher: "Capcom",
	image: "http://static.gamesradar.com/images/mb/GamesRadar/us/Features/2009/02/Street%20Fighter%20boxes/sf2--article_image.jpg",
	release_date: "Februray 6,1991"
})

Game.create({
	name: "Super Smash Bros. Melee",
	company: "HAL Laboratory",
	publisher: "Nintendo",
	image: "https://upload.wikimedia.org/wikipedia/en/7/75/Super_Smash_Bros_Melee_box_art.png",
	release_date: "December 3, 2001"
})

Game.create({
	name: "Sonic the Hedgehog 2",
	company: "Sonic Team",
	publisher: "Sega",
	image: "http://gamefiles.alphacoders.com/boxart/original/front/thumb-142-2.jpg",
	release_date: "November 24th, 1992"
})

Game.create({
	name: "Pokemon Blue",
	company: "Gamefreak",
	publisher: "Nintendo",
	image: "http://cdn.bulbagarden.net/upload/thumb/5/5a/Blue_EN_boxart.png/250px-Blue_EN_boxart.png",
	release_date: "September 28, 1998"
})

Game.create({
	name: "Undertale",
	company: "Toby Fox",
	publisher: "Toby Fox",
	image: "http://media.breitbart.com/media/2015/11/undertale-kickstarter-640x480.png",
	release_date: "September 15,2015"
})

Game.create({
	name: "Starcraft",
	company: "Blizzard",
	publisher: "Blizzard",
	image: "http://www.mobygames.com/images/covers/l/143850-starcraft-windows-front-cover.jpg",
	release_date: "March 31,1998"
})

Game.create({
	name: "The Legend of Zelda: The Wind Waker",
	company: "Nintendo",
	publisher: "Nintendo",
	image: "http://vignette2.wikia.nocookie.net/zelda/images/6/6d/The_Legend_of_Zelda_-_The_Wind_Waker_HD_(North_America).png/revision/latest?cb=20130808221458",
	release_date: "March 24,2003"
})



