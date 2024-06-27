# Movies App

## Overview

The Movies App is a comprehensive application designed for film enthusiasts. It provides users with detailed lists of movies categorized into Trending Movies, Top Rated Movies, and Now Playing Movies. Each movie entry includes a poster, name, and a detailed description page with additional information. The app aims to offer a seamless and engaging experience for users to explore and discover movies.

<div style="text-align: center;">
  <img src="https://github.com/gayathri3377/Movies-App/assets/152592583/e9737f61-729d-4951-ad6a-bb544ca84554" alt="Home" width="200"/>
  <img src="https://github.com/gayathri3377/Movies-App/assets/152592583/0ee4015c-95b0-448a-a07b-205573edb604" alt="Home2" width="200"/>
  <img src="https://github.com/gayathri3377/Movies-App/assets/152592583/1d69cb78-b42a-451e-ba84-7eb310ece3e5" alt="Overview" width="200"/>
  
</div>

## API Connection

The app connects to the TMDB API to fetch up-to-date movie data. Here is a brief description of the API connection:

1. **API Key Generation:** 
   Users need to sign up on the [TMDB API website](https://developers.themoviedb.org/3) and follow the instructions to generate a unique API key. This key is essential for making authenticated requests to the API.

2. **API Endpoints:**
   - **Trending Movies:** The app uses the [GET popular](https://developers.themoviedb.org/3/movies/get-popular-movies) endpoint to retrieve a list of trending movies.
   - **Top Rated Movies:** The app utilizes the [GET top rated](https://developers.themoviedb.org/3/movies/get-top-rated-movies) endpoint to fetch top-rated movies.
   - **Now Playing Movies:** The app accesses the [GET now playing](https://developers.themoviedb.org/3/movies/get-now-playing) endpoint to get a list of movies currently playing in theaters.

3. **HTTP Requests:**
   The API key is included in the HTTP requests to the various endpoints, ensuring that the app receives the latest movie data.
   
## Screens and Functionality

### Home Screen

- **Trending Movies:** Displays a list of trending movies with their posters and names.
- **Top Rated Movies:** Shows a list of top-rated movies along with their posters and names.
- **Now Playing Movies:** Lists movies currently playing in theaters, featuring their posters and names.

### Description Page

Each movie entry links to a detailed description page containing:
- **Release Date**
- **Rating**
- **Overview**

## Future Plans

- **Google Sign-In:** Integrate a Google sign-in option for user authentication.
- **Bookmark Feature:** Allow users to bookmark their favorite films for easy access.
- **Collections:** Enable users to create and manage collections of their favorite movies.

The Movies App aims to continuously enhance its features to provide a richer and more personalized experience for movie lovers.
