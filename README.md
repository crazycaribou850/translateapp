# translateapp
Rails Translate App

Team Members: Tommy Poa, Mingjun Lim, Sinjon Santos
Demo Link: https://drive.google.com/open?id=1VpIhJEmSJ_L2i3cvfIgBzTRCp-uede_Y

Idea: An application which allows users to create lists of words that include English and their translations. Users can also adopt pre-built playlists (by other users) and view them from their own profile page

Models and Descriptions:
User
  - has name, email, password (powered by devise)
  - has many playlists

Language
  - has many playlists

Playlists
  - belongs to a language
  - has and belongs to many users


Features
  - Users can log in and edit their account details
  - Users can scroll through all available playlists (made by other users)
  - Users can adopt playlists (created by other users) and save them for easy reference
    - Most popular playlists appear first
  - Users can create their own word lists by simply providing the english words they require and the language of translation - words are translated automatically for the users convenience.
  - Users can edit only their existing playlists

Division of Labor
  - Mingjun:
  Integrated the DeviseGem, ZephyrFoundation Gem, and EasyTranslate Gem
  Built and customized homepage and navbar.

  - Tommy:
  Built language and profile views and controllers
  Designed the architecture of web app
  Added CSS Styling

  - Sinjon:
  Built make playlist functionality
  Implemented serializable for storing multiple words in playlist.
  Screencast
