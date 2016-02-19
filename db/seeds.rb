#Destroy Functions to Prevent Duplicate Data

Game.destroy_all

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