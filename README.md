# Repertoire Back-end README

Link to front end README: https://github.com/Aaron-Vale/repertoire

Link to front end application: https://aaron-vale.github.io/repertoire/

Link to back end application: https://av-repertoire.herokuapp.com/

### Overview

Repertoire is a single-page web application for musicians to create and save a digitized version of their repertoire. Users, once they sign up for an account and log in, can begin adding songs to their repertoire. Through this back-end Rails application, users can access their saved songs, edit or delete songs, and create new songs.

### Technologies Used

Ruby on Rails, cURL

## Development Process

The first and most important challenge in designing the back end for Repertoire was figuring out how to structure my database. I knew from the beginning that the database must contain data for users, songs, composers, and instruments. I thought out many ways about how these entities could relate to one another, but which way would be most practical for the purposes of my application?

Original ERD: https://flic.kr/p/YyzVxm
  - I originally considered making songs, composers, and instruments separate entities, with users having many songs and many instruments, and each song having a composer.

ERD V2: https://flic.kr/p/YJ9u4F
  - This is the fist model I implemented, but it proved to be unnecessarily complicated. The model centers around songs as a join table, which would allow many to many relationships between users, composers and instruments, through songs. Once I started to build out my front end, I realized that I only wanted the user to be able to view a table containing song information, so I scaled back the complexity of the database.

Final ERD: User -< Songs
  - A user has many songs, while a song belongs to a user.
  - A song has a composer and an instrument associated with it.
  - Once I had the end goal for the front end in mind, simplifying the back end to this structure was a good way to meet the needs of my user stories.
  - At this point, it was easy to make a AJAX request from my front end and receive all the relevent information about a user's songs.

### Future Additions

One feature I am considering implementing is switching the Songs controller from ProtectedController to OpenController, which would allow a user to view another user's repertoire. Once this is in place, I would then add more social features to the front end.
