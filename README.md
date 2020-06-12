# _Parks API_
#### _A practice application using Ruby & Rails. 6.12.2020_

#### By _**Allison Mackey**_

## Description

_This application will allow a user to retrieve information from it by using the calls listed below in an app._

---

## Setup/Installation Requirements
_See detailed setup instructions [here](INSTALL.md)_
* _View this project & make API calls from here: https://frozen-sea-48679.herokuapp.com/parks_
* _View Repository from GitHub :  https://github.com/amackey693/Week13Review_


---

## API Routes & Endpoints



|   API Requests w/ Heroku Live App  |
|-------------------------------|
| **GET Request End Points**                   |
| _returns all parks:_ |  
|https://frozen-sea-48679.herokuapp.com/parks |
| _navigate parks by a page of 15 results at a time:_ |
| https://frozen-sea-48679.herokuapp.com/page?number=[enter_page_1-14]	|
| _returns a specific park based on id:_      |
| https://frozen-sea-48679.herokuapp.com/parks/[:id] |
| **SEARCH End Point** |
| _returns results based off of search term:_
| https://frozen-sea-48679.herokuapp.com/search?query=[:search_term] |
| **examples:**| 
| _to find all state parks:_ https://frozen-sea-48679.herokuapp.com/search?query=state |
| _to find all national parks:_ https://frozen-sea-48679.herokuapp.com/search?query=national |
| **RANDOM Endpoint**|
| _returns a random park each time you submit a request:_
| https://frozen-sea-48679.herokuapp.com/random
| **POST Requests Endpoints**                  |
| _create a new park **params required: name, address, website, phone number, and open (boolean)**_ |
| https://frozen-sea-48679.herokuapp.com/parks/[:enter_all_required_params]
| **PATCH Request Endpointss**             |
| _update a park by :id **at least one param required: name, address, website, phone number, and open (boolean)**_|
| https://frozen-sea-48679.herokuapp.com/parks/[:id]/[:enter_params_to_update]| 
| **DELETE Requests Endpoints**                |
| _deletes a park_ : https://frozen-sea-48679.herokuapp.com/parks/[:id] | 




## Known Bugs

_No known bugs at this time_

## Support and contact details

_If you have any questions or any issues please feel free to submit an issue here: https://github.com/amackey693/Week13Review/issues_

## Technologies Used

_Ruby, Rails, Gem, Pry, ShouldaMatchers_ 


### Licenses
*MIT LICENSE*

Copyright (c) 2020 **_Allison Mackey_**

    