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
	image: "",
	release_date: ""
})

Game.create({
	name: "Super Smash Bros. Melee",
	company: "HAL",
	publisher: "Nintendo",
	image: "",
	release_date: ""
})

Game.create({
	name: "Sonic the Hedgehog II",
	company: "Sega",
	publisher: "Sega",
	image: "",
	release_date: ""
})

Game.create({
	name: "Pokemon Blue",
	company: "Gamefreak",
	publisher: "Nintendo",
	image: "",
	release_date: ""
})

Game.create({
	name: "Undertale",
	company: "Toby Fox",
	publisher: "N/A",
	image: "",
	release_date: ""
})

Game.create({
	name: "Starcraft",
	company: "Blizzard",
	publisher: "Blizzard",
	image: "",
	release_date: ""
})

Game.create({
	name: "The Legend of Zelda: Wind Waker",
	company: "Nintendo",
	publisher: "Nintendo",
	image: "",
	release_date: ""
})



