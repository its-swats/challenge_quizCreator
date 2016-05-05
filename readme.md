# NoRedInk Take Home Quiz Challenge
NoRedInk take home challenge using Sinatra 
## Installation
Create and seed the database from terminal. 

CSV files are parsed in to ActiveRecord for ease of use. 

```
bundle install
be shotgun
be rake db:create
be rake db:migrate
be rake db:seed
```

## Usage

* Launch the server using __be shotgun__
* Navigate to **localhost:8080**
* Enter any positive number in to the input box and select a sort type
* Hit "Search"

## Goals Hit
* The program should prompt the user for the number of questions to put in the quiz. Any integer value greater than 0 is acceptable.
* The expected output is to display a list of question_ids
* Use each strand as close as possible to an equal number of times. (e.g. There are two strands, so if the user asks for a 3 question quiz, it's okay to choose one strand twice and the other once.)
* Use each standard as close as possible to an equal number of times.
* Parse CSVs by hand instead of hard-coding the data.
* Order the questions in the quiz from easiest to hardest
