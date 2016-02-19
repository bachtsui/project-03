#Morio Teaches Finance (Name Pending)

Morio Teaches Finance is a simple web app designed to keep track of a user's spending habits when it comes to video game purchases. In the age of Downloadable Content and Microtransaction, it is easy to not realize how much money you've put into a video game. This app intends to fix that while also providing interesting visual data. 

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
*"/login"* | GET | "sessions#new" | Logs in existing user
*"/logout"* | GET | "sessions#destroy" | Logs out existing user, deletes session data/cookie
*"/sessions"* | POST | "sessions#create" | Creates a new session

### Code Snippets

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
This application is deployed on heroku [here](TBD).


### Features to Implement In the Future