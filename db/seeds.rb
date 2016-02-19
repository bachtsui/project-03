#Destroy Functions to Prevent Duplicate Data

Game.destroy_all

Game.create({
	name: "Super Mario RPG",
	company: "Square",
	publisher: "Nintendo",
	image: "http://static.tvtropes.org/pmwiki/pub/images/JetGrindRadio_cover.jpg",
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
	image: "http://static.tvtropes.org/pmwiki/pub/images/JetGrindRadio_cover.jpg",
	release_date: "February 17, 2005"
})