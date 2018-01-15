* [ ] What tools to use?
  * [x] Data processing:
    * RStudio
    * Bash for basic grep etc.
    * Python for parsing
    * [x] date and time lib? - lubricate in tidyverse
  * [ ] Vizualization
    * [x] ~~Try Shiny~~ - cannot run a Shiny server remotely
    * [x] ~~Try Infograph~~ - maybe, but external and needs processed data
    * [ ] Try GGplot with basic data (iris)
* [ ] CSFD
  * [x] Can I get any data? mozna z https://www.csfd.cz/uzivatel/23029-karadum/hodnoceni/
  * [x] Export data
  * [ ] Preprocess data
  * [ ] First look in R
  * [ ] Metrics
    * [ ] How many movies have I rated?
    * [ ] What are they ratings?
    * [ ] Top 10 movies?
  * [ ] Data vizualization
  * [ ] Comments for vizualization
* [ ] TimeLog
  * [x] Can I get any data?
  * [x] Export data
  * [ ] Preprocess data
  * [ ] First look in R
  * [ ] Metrics
    * [ ] What does an average day look like?
    * [ ] Top activities?
    * [ ] Top activities per day?
  * [ ] Data vizualization
    * [ ] Yearly calendar with each day having the top activity color
  * [ ] Comments for vizualization
* [ ] GoodReads
  * [x] Can I get any data?
  * [x] Export data
    * [x] Export data from the HTML listing on the webpage
    * [x] Parse the HTML code for title, rating, author, reading dates, and tags
  * [ ] Preprocess data
  * [ ] First look in R
  * [ ] Metrics
    * [ ] How many books have I read?
    * [ ] What are their ratings?
    * [ ] Top 10 books?
    * [ ] When did I finish the most books?
    * [ ] What type of books have I read the most?
  * [ ] Data vizualization
  * [ ] Comments for vizualization
* [ ] Pocket
  * [x] Can I get any data?
  * [ ] Export data
    * [x] Export the data using Pocket's system
    * [x] What do the data look like?
    * [ ] Is there a way how to indentify "read"?
    * [ ] Can I fetch data from the readRuler site?
  * [ ] Preprocess data
  * [ ] First look in R
  * [ ] Metrics
    * [ ] How many articles have I read?
    * [ ] What are my most used tags?
  * [ ] Data vizualization
  * [ ] Comments for vizualization
* [ ] Steam
  * [ ] Can I get any data?
    * maybe https://steamcommunity.com/discussions/forum/10/624075482698670357/
  * [ ] Export data
  * [ ] Preprocess data
  * [ ] First look in R
  * [ ] Metrics
    * [ ] What kind of games am I playing?
    * [ ] How much time did I spend in games?
  * [ ] Data vizualization
  * [ ] Comments for vizualization
* [ ] GOG
  * [ ] Can I get any data?
    * [x] sales
    * [x] gaming
  * [ ] Export data
  * [ ] Preprocess data
  * [ ] First look in R
  * [ ] Metrics
    * [ ] What kind of games am I playing?
    * [ ] How much time did I spend in games?
  * [ ] Data vizualization
  * [ ] Comments for vizualization
* [ ] Zatrolene hry
  * [x] Can I get any data?
    * yes, need to go through the listing and download each page from my gaming diary
  * [x] Export data
    * [x] Join the pages
    * [x] Parse the HTML of troll to find game name, # of players, game length, game date
  * [x] Preprocess data
  * [ ] First look in R
  * [ ] Metrics
    * [ ] How many games have I played?
    * [ ] What number of players?
    * [ ] What dates do I play?
  * [ ] Data vizualization
  * [ ] Comments for vizualization

-------------------

# Pipeline
1. Get data from an export option
2. Preprocess them into tidy data format by bash/python/R
3. Process and get metrics in Rstudio
4. ggplot vizualization of basic metrics (possibly iterate back to 3.)
5. Knit to HTML or Rnotebook in order to place as a web page
6. Possibly additional vizualization with Infograph or similars
