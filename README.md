#VGVault

VGVault is a simple web app designed to keep track of a user's videogame collection. A user can
sign up and select games that they own and add it to their user profile. Eventually VGVault aims
to allow users to keep track of their spending habits by inputting the price at which they
buy a game at. In the age of Downloadable Content and Microtransaction, it is easy to not realize how much money you've put into a video game. This app intends to fix that while also providing interesting visual data. 

### Technology Used
* **Ruby On Rails** 
* **PostgreSQL** for the backend database
* **HTML + CSS** for all the front-end engineering. Also used **SCSS** framework to design each page and **Bootstrap**
* **RESTful Routes** designed CRUD routes using the REST convention relevant to user experience.
* **Git + Github** version control used at every stage of project articulating progress throughout the week
* **Visual Design** wire framing & user stories were essential to keep branding consistent. 
* Heroku

### List of API Endpoints

Endpoint | Method | Route | Data
--- | --- | --- | ---
*/* | GET | welcome#index | Displays splash page
*"/users"* | GET | "users#index" | Currently Does Nothing
*"/singup"* | GET | "users#new" | Takes new user to signup page
*"/users"* | POST | "users#create" | Creates new user using signup page's data 
*"/users/:id"* | GET | "users#show" | Shows a single user's page
*"/users/:id/edit"* | GET | "users#edit" | Takes logged-in user to update form for themselves
*"/users/:id"* | PATCH/PUT | "users#update" | Updates user's details from edit page's data
*"/users/:id"* | DELETE | "users#destroy" | Destroys logged-in user from the database
*"/users/:id/games"* | POST | "users#add_game"| Adds selected game to the User Profile
*"/users/:id/games"* | DELETE | "users#delete_game"| Deletes selected game from the User Profile
*"/login"* | GET | "sessions#new" | Logs in existing user
*"/logout"* | GET | "sessions#destroy" | Logs out existing user, deletes session data/cookie
*"/sessions"* | POST | "sessions#create" | Creates a new session

### Code Snippets

Example of Data that I Want to Parse Through

```
"results": [{
    "expected_release_day": 1,
    "expected_release_month": 3,
    "expected_release_year": 2016,
    "image": null,
    "name": "Heavy Rain",
    "platform": {
      "api_detail_url": "http:\/\/www.giantbomb.com\/api\/platform\/3045-146\/",
      "id": 146,
      "name": "PlayStation 4"
    }
  }, {
    "expected_release_day": 1,
    "expected_release_month": 3,
    "expected_release_year": 2016,
    "image": {
      "icon_url": "http:\/\/static.giantbomb.com\/uploads\/square_avatar\/9\/97089\/2823043-box.png",
      "medium_url": "http:\/\/static.giantbomb.com\/uploads\/scale_medium\/9\/97089\/2823043-box.png",
      "screen_url": "http:\/\/static.giantbomb.com\/uploads\/screen_medium\/9\/97089\/2823043-box.png",
      "small_url": "http:\/\/static.giantbomb.com\/uploads\/scale_small\/9\/97089\/2823043-box.png",
      "super_url": "http:\/\/static.giantbomb.com\/uploads\/scale_large\/9\/97089\/2823043-box.png",
      "thumb_url": "http:\/\/static.giantbomb.com\/uploads\/scale_avatar\/9\/97089\/2823043-box.png",
      "tiny_url": "http:\/\/static.giantbomb.com\/uploads\/square_mini\/9\/97089\/2823043-box.png"
    }
```

Found this data using the following API hit
http://www.giantbomb.com/api/releases/?api_key=[REDACTED]&limit=1&filter=release_date:2016-03-01|2017-01-01&format=json&sort=release_date:asc&field_list=name,expected_release_day,expected_release_month,expected_release_year,image,platform

### Installation
* **Step 1**: Fork and clone this repository

* **Step 2**: In terminal type in the following commands

```
bash
bundle install
rake db:create db:migrate db:seed
rails s
```

* **Step 3**: Go to localhost:3000 in Browser

###Link to Heroku
​
This application is deployed on heroku [here](https://vgvault.herokuapp.com/).


### Features to Implement In the Future
1. Allow a user to be able to say that they own a game vs. wanting a game
2. Be able to display the difference on the User Profile
3. Allow a user to be able to input the price they paid for a game
4. Allow a user to search for a game incoporating Giant Bomb's API and add to the database
5. Allow a user to add purchase price for microtransactions or downloadable content for a game
6. Show a breakdown of a user's purchase over a select period of time (Month/6 Months/Year)

### Potential Future Problems to Think About
1. Set the default price purchase to 0, if you have a value of nil and try to take 
a sum, that will lead to errors.
2. Should a user be able to add the same videogame to their collection twice. Think
about how some users rebuy the same game for various reasons. How do you take
price purchase into account here? 
3. How do you account for a game that has different publishers depending on which
country they are released in. Do you create two seperate database entries? Probably
creating hash for publisher is the most appropriate way to go.
4. When you search for a game and add it to database via Giant Bomb API, how
do you prevent the game from appearing in your database multiple times when
users search for the same game over and over again? Probably should check your
own database first to see if the game exists and then search through Giant Bomb's API.



