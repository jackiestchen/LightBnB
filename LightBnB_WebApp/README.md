# LightBnB
## Project ERD

![databaseERD](/LightBnB_WebApp/images/dberd.png?raw=true)

## Project Structure

```
├── public
│   ├── index.html
│   ├── javascript
│   │   ├── components 
│   │   │   ├── header.js
│   │   │   ├── login_form.js
│   │   │   ├── new_property_form.js
│   │   │   ├── property_listing.js
│   │   │   ├── property_listings.js
│   │   │   ├── search_form.js
│   │   │   └── signup_form.js
│   │   ├── index.js
│   │   ├── libraries
│   │   ├── network.js
│   │   └── views_manager.js
│   └── styles
├── sass
└── server
  ├── apiRoutes.js
  ├── database.js
  ├── json
  ├── server.js
  └── userRoutes.js
```

* `public` contains all of the HTML, CSS, and client side JavaScript. 
  * `index.html` is the entry point to the application. It's the only html page because this is a single page application.
  * `javascript` contains all of the client side javascript files.
    * `index.js` starts up the application by rendering the listings.
    * `network.js` manages all ajax requests to the server.
    * `views_manager.js` manages which components appear on screen.
    * `components` contains all of the individual html components. They are all created using jQuery.
* `sass` contains all of the sass files. 
* `server` contains all of the server side and database code.
  * `server.js` is the entry point to the application. This connects the routes to the database.
  * `apiRoutes.js` and `userRoutes.js` are responsible for any HTTP requests to `/users/something` or `/api/something`. 
  * `json` is a directory that contains a bunch of dummy data in `.json` files.
  * `database.js` is responsible for all queries to the database. It doesn't currently connect to any database, all it does is return data from `.json` files.

  ## Installation
  1. Install dependencies using the `npm install` command.
  2. Start the web server by using the `npm run local` command.
  3. Enter [localhost:3000](http://localhost:3000/) to browser. 

  ## Features to be implemented in future
  * New listings will show in `My Listings`
  * Create/delete reservations and listings
  * Search results will show more listings as user scrolls down
    
  ## Functionalities
  ### Home Page 
  ![Home Page](/LightBnB_WebApp/images/homepage.png?raw=true)

  ### Home page will display 10 sample listings.
  ***
  ### Search Page
  ![Search Page](/LightBnB_WebApp/images/searchpage.png?raw=true)
  ### User can search without login or sign up.
  ***
  ### Login Page
  ![Login Page](/LightBnB_WebApp/images/loginpage.png?raw=true)
  ![User Page](/LightBnB_WebApp/images/userpage.png?raw=true)
  ### User can login to see their reservations and listings.
  ***
  ### Sign Up Page
  ![Sign Up Page](/LightBnB_WebApp/images/signup.png)
  ### User can sign up to create listings.
  ***

  ## Dependencies
  * bcrypt
  * body-parser
  * cookie-session
  * express
  * nodemon
  * pg

