# Rails Spotify API


## Installation
```bash
  $ git clone https://github.com/nardonykolyszyn/rails-spotify.git
```

```bash
  $ cd rails-spotify
```

```bash
$ bundle install
```

Export your CLIENT_ID and CLIENT_SECRET from https://developer.spotify.com/documentation/web-api to your .env file.


## End-Points

### Artists

```json 
  GET /spotify/artists?name="coldplay"
``` 
### Playlists

```json 
    GET /spotify/playlists?name="indie"
``` 

### Users

```json 
  GET /spotify/users?name="devpolish"
``` 

### Tracks

```json 
  GET /spotify/users?name="Dream on"
``` 

### Albums

```json
  GET /spotify/users?name="The Wall"
```