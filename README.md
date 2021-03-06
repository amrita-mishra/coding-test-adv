# Ownr Developer Candidate Coding Test

Congratulations, you have been asked to complete our Full Stack candidate proficiency test! 

You will have **48 hours** starting when you receive this test to return the full working source code as a Pull Request against a fork of this repository. Please thoroughly read the attached set of instructions. You will be creating a mini web app that uses React, Node, Express, and Postgres. This app will consist of a backend Express server that will deliver a React app to be rendered in the browser. 

The app that you will be building is a simple image carousel that allows the user to pick between cat or shark photos and then cycle through those photos. An example of a running version of this can be seen here:
https://founded.media/hiring/videos/cat-shark-app.mp4

In addition, you will be adding administrative APIs that allow users to add or delete animal categories, updating the categories available in the UI. 

If you have any questions, require further details or get stuck please do not hesitate to contact Hugh Soong (hugh.soong@rbc.com).

## Requirements

**Core Application**

The Express server, besides delivering whats required for React, should also provide an API endpoint that will return lists of photo URLs that are retrieved from a database. Your React app should make a request to your API endpoint to retrieve a photo list. During this request the React app should show a loading state. Once the photo list has been retrieved the loading state should dismiss and the first photo should be shown. The user should now be able to cycle through the photos using left and right arrow buttons. The user can use the UI to toggle between cat photos, shark photos, or both (when both selected they should arrive in a random order). After each change to the desired list the loading state should be shown just like during the initial load and a new request to the photo API endpoint should be made (i.e. Do not cache the photo lists).

**Administrative Endpoints**

The Express server should also expose a number of administrative endpoints. The primary responsibility of these endpoints is to enable the addition or deletion of additional animal categories. When a category is added or removed, the application should be updated to reflect this (e.g. If the `dog` category is added, the UI should display buttons for cats, dogs, and sharks. Categories are shuffled together based on active categories).

These endpoints should be protected, only allowing requests accompanied by a valid authentication token. The starter code exposes a route, `GET /auth` that will return an auth token. This token should be used to authenticate requests. 

### Do

- Be mindful of when to use props vs. state vs. Hooks vs. Context
- Be RESTful
- ES6+
- Use JS best practices
- Be creative

### Don't

- Use a third party library for the carousel (libraries for the minor components can be used to save time)
- Over think the problem, there's no trick here

### BONUS

- Unit tests
- Build an admin page for the administrative API
- Improve security of token generation in `auth.js` or add a login
- Clean up the app structure
- Other useful features

## Instructions

### Pre-requisites
- This assignment requires Docker, ensure that your machine can run the docker engine at a minimum. Alternatively, the `/data` folder contains SQL scripts to seed a local Postgres database.  

### Getting started

- Fork or clone this repository.
- Run `docker-compose build` to build your docker environment.
- Use `docker-compose up` to enable your environment. This will start your Express server and a Postgres database. Nodemon is used so we don't need to rebuild the Express server docker image frequently.
- The Postgres docker image will be available on port `5433` with username/password of `postgres/postgres`.
- The Postgres database will be pre-loaded with two tables. The `animal_categories` table contains a table of animal categories. The `animal_photos` table contains animal photo urls.
- The Photo List below is an example request body to the administrative endpoint - feel free to use it to test adding new animal cantegories. 
- Complete the assignment in a separate branch in your version of the repository.

### Submission
There are several ways to submit your completed assignment:

#### PR Method (Preferred)
- Create a PR for `your new branch` -> `master` **in your own repository**
- Do not PR in this repository
- Email hugh.soong@rbc.com with a link to the PR

#### Zip Method
- Zip your completed code
- Email it to hugh.soong@rbc.com

## Photo Lists

```json
{ 
  "dogs": [
  "https://founded.media/hiring/photos/dogs/photo-1477884213360-7e9d7dcc1e48.jpeg",
  "https://founded.media/hiring/photos/dogs/photo-1534361960057-19889db9621e.jpeg",
  "https://founded.media/hiring/photos/dogs/photo-1534551767192-78b8dd45b51b.jpeg",
  "https://founded.media/hiring/photos/dogs/photo-1543466835-00a7907e9de1.jpeg",
  "https://founded.media/hiring/photos/dogs/photo-1548199973-03cce0bbc87b.jpeg",
  "https://founded.media/hiring/photos/dogs/photo-1561037404-61cd46aa615b.jpeg",
  "https://founded.media/hiring/photos/dogs/photo-1576201836106-db1758fd1c97.jpeg",
  "https://founded.media/hiring/photos/dogs/photo-1581888227599-779811939961.jpeg",
  "https://founded.media/hiring/photos/dogs/photo-1583511655857-d19b40a7a54e.jpeg",
  "https://founded.media/hiring/photos/dogs/photo-1587300003388-59208cc962cb.jpeg",
 ],
 "dinosaurs": [
  "https://founded.media/hiring/photos/dinosaurs/photo-1519568262558-dc4b87dd85ca.jpeg",
  "https://founded.media/hiring/photos/dinosaurs/photo-1525877442103-5ddb2089b2bb.jpeg",
  "https://founded.media/hiring/photos/dinosaurs/photo-1559999127-b8b7f927dab8.jpeg",
  "https://founded.media/hiring/photos/dinosaurs/photo-1560148271-00b5e5850812.jpeg",
  "https://founded.media/hiring/photos/dinosaurs/photo-1568887786489-0662e7f51aab.jpeg",
  "https://founded.media/hiring/photos/dinosaurs/photo-1570482606740-a0b0baa0e58d.jpeg",
  "https://founded.media/hiring/photos/dinosaurs/photo-1579197073550-bf44b469a6fe.jpeg",
  "https://founded.media/hiring/photos/dinosaurs/photo-1583307359900-dbefeb18e3cc.jpeg",
  "https://founded.media/hiring/photos/dinosaurs/photo-1583307709855-88a955597645.jpeg",
  "https://founded.media/hiring/photos/dinosaurs/photo-1606856110002-d0991ce78250.jpeg"
 ]
}
```
