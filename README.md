# Data Work

##Data Scraping

In the first workshop we will look at scraping text and image data from the web and text corpuses. Included in this 'datawork' GitHub repository are a number of example files that you can scaffold off and use in your own collection and structuring of datasets. These cover only a few key methods that might be used to scrape data and make datasets including:

Accessing online datasets using API (Application Programming Interfaces). You can think of APIs as translators that allow your code to talk to and request data from organisations. We will show you two ways of interfacing with the Twitter API. One involving Processing and another using an Add-on called 'Twitter Archiver' in Google Spreadsheets.

Advanced Rules in Twitter Archiver
You can apply more advanced search options using any of Twitter's search options in the Advanced Rules box. Most important would be to constrain your search by dates.
Add -filter: since:2019-01-01 to search all dates from the start of the year until now. And you can also add -filter: until:2019-31-01 if you wanted to constrain all the result to only the month of January.


APIs (application programming interface) - online communication portals that allow you to access data from organisations
your code < - > API < - their code/data
I've got a working example with Temboo 

Workout accessing via Google Spreadsheet Plugin

Pre-gathered datasets
Github (i.e. Machine Learning datasets, be aware that datasets contain bias! they are not objective i.e. talk about 3 black teenagers Google Search or Manet and Burrito) ALL data is biased
Kaggle
Make your own

Searching text corpus’
See Daniel Shiffman for online tutorials: https://shiffman.net/a2z/text-analysis/
I've modified the Concordance example so it searches and counts words and then you can output a csv file

You can also web scrape your own datasets together
Everest Pipkin - talks about how scraping your own datasets allows you to be more careful, ethical and tactical in where you source data from and who you seek to represent (and how they are represented) in datasets
“Scraping is perfect for data that is ungathered, under-respected, or generally lacks the resources to be bundled into a set; data that is “floating.”
But remember no dataset is 'neutral'
(http://sfpc.io/codesocieties-winter-19/2019/01/10/building-nets-for-floating-data.html)


Examples: 

Lucy Parson’s Lab - Examples of politically motivated data scraping.
https://lucyparsonslabs.com/about/

Tan Lin’s Heath - Book generated on data from the day Heath Ledger died.

Small Multiples
Not a Single Origin https://smallmultiples.com.au/projects/not-a-single-origin/
Casino Busmaps (Geocoding Star Express Timetable - targeting population groups) https://smallmultiples.com.au/projects/casino-bus-maps---the-cash-cow-suburbs/

Penelope Umbrico - Suns From Flickr
http://www.penelopeumbrico.net/index.php/project/suns/

Matthew Plummer Fernandez
Shiv Integer
http://www.plummerfernandez.com/Shiv-Integer
"Shiv Integer is a bot making assemblage art for 3D printers. Rummaging through Thingiverse, the biggest online 3D-Print community and a vast archive of user-made models - full of knick-knacks and engineering parts - the bot picks objects at random to conjoin into sculptures and gives them apt word-salad names such as "disc on top of an e-juice golf." The process follows a lineage of Dadaist readymade and chance art, but also explores the authorship-inheritance of Creative Commons licensing, as well as performing an archiving of an Internet subculture, taking cross-database snapshots of 3D-Print culture.

The bot ran anonymously with only a vague FAQ explanation. Thingiverse users either love or hate the bot; it’s provoked hundreds of comments ranging from fan poetry to hate mail, and sparked a long debate over if it makes art or spam. User’s binding stake in authorship made them fiercely active, forming a key facet of Shiv Integer, which from the outset was an anagram of Thingiverse."

Speech Comparison by Rune Madsen
https://www.runemadsen.com/work/speech-comparison/

Book-Book
http://sarahghp.com/projects/book-book.html

