# Data Work

## Data Scraping

In the first workshop we will look at scraping text and image data from the web and text corpuses. Included in this 'datawork' GitHub repository are a number of example techniques and files that you can scaffold off and use in your own collection and structuring of datasets.

When working with data be aware that all datasets are situated within and produced through broader socio-material practices. This means that all data sets are biased no data set is objective or neutral.

## API Example / Twitter API & Google Sheets
Many online platforms allow you to access their online datasets and services using an API (Application Programming Interfaces). You can think of APIs as translators that allow your code to talk to and their code. See here for a list of APIs https://any-api.com/.

'Twitter Archiver' is a Google Sheets Add-On that allows you to access and search for tweets on Twitter.

* You will need a Twitter Account
* Log in to Google Drive (you probably have one via your UTS email).
* Go to Sheets and create a new sheet
* Select the Add-Ons menu and then Get Add-Ons
* Search for "Twitter Archiver" and then click the Free button. A pop up will come up and follow the prompts. You will need to authorise Twitter Archiver to access your Twitter account.
* Go to Add Ons > Twitter Archiver > Create Rule

### How to Search
If you are not sure what you would like to search for you can test it out using the hashtag associated with a widescale event or movement such as the School Climate Stike (#strikeforclimate #climatestrike) or metoo (#metoo). We suggest also constraining your search in some way, for example by date. As an example if you just searched for 'cats' with no other constraint you will receive all tweets that include that word. To constrain by date you will need to a more advanced search options using any of Twitter's search options in the Advanced Rules box. Add -filter: since:2019-01-01 to search all dates from the start of the year until now. And you can also add -filter: until:2019-31-01 if you wanted to constrain all the result to only the month of January.

## Pre-gathered Datasets
You can also use datasets that have also been collated or gathered.

Kaggle: over 15,000 different datasets
Image Net: image data based used to train image recognition http://www.image-net.org/
Gutenberg Project: digitised book in the public domain http://www.gutenberg.org/
Public Domain Review: https://publicdomainreview.org/collections/

Github (i.e. Machine Learning datasets, be aware that datasets contain bias! they are not objective i.e. talk about 3 black teenagers Google Search or Manet and Burrito) ALL data is biased

Open government data:
- Australia (https://data.gov.au/)
- USA (http://data.gov/)
- Europe (http://data.europa.eu/euodp/en/data/)

Google Trends. Time-sensitive exploration of search terms with regional stats, etc. (Hit download on any graph for raw data) https://trends.google.com/trends/explore?q=corruption

News APIs
- The New York Times (https://developer.nytimes.com/)
- The Guardian (https://open-platform.theguardian.com/)
- Aggregate sources (https://newsapi.org/)


## Text Analysis Using Computational Methods

### Simple Word Count of a Text Corpus
See Daniel Shiffman for online tutorials: https://shiffman.net/a2z/text-analysis/. I've modified the Concordance example so it searches and counts words and then you can output a csv file. Example file available for download here.

### Distant Reading
Andrew can you add this in here?

## Scrape
You can also scrape your own datasets together from disparate searches and sources and collate them into a dataset. We will not be covering this in class and it is not something you will have time for for this workshop but it is something to be aware of as a practice. Artist Everest Pipkin argues that scraping your own datasets can allow you to be more careful, ethical and tactical in where you source data from and who you seek to represent (and how they are represented) in datasets. 
“Scraping is perfect for data that is ungathered, under-respected, or generally lacks the resources to be bundled into a set; data that is 'floating'" (Everest Pikin quoted by one of their students somewhere in the jumble of here) http://sfpc.io/codesocieties_students/).

(http://sfpc.io/codesocieties-winter-19/2019/01/10/building-nets-for-floating-data.html)

## Examples

#### Lucy Parson’s Lab
Examples of issue-based data scraping.
https://lucyparsonslabs.com/about/

#### *Heath* by Tan Lin
Book generated from a mash-up of data sources (RSS feeds, blogs, Google searches etc) on Heath Ledger's death. 
http://www.mottodistribution.com/shop/publishers/westphalie-verlag/heath-plagiarism-outsource.html

#### *Not a Single Origin* by Small Multiples
Uses Census data to generate a flavoured chocolate cultural map of Sydney
https://smallmultiples.com.au/projects/not-a-single-origin/

#### *Casino Busmaps* by Small Multiples
Geocoding the Star Express Timetable in order to investigate if its route is targeting specific population groups. Geocoding is the process of converting a physical address to a geographic location (i.e. longitude/latitude).
https://smallmultiples.com.au/projects/casino-bus-maps---the-cash-cow-suburbs/

#### *Suns From Flickr* by Penelope Umbrico
http://www.penelopeumbrico.net/index.php/project/suns/

#### *Shiv Integer* by Matthew Plummer Fernandez
Automated bot that searchs through Thingivese (an online 3D print community) and assembles user-made models in sculptures.
http://www.plummerfernandez.com/Shiv-Integer

#### *Speech Comparison* by Rune Madsen
Visual comparison of nine famous speeches using word count.
https://www.runemadsen.com/work/speech-comparison/

#### *Book-Book* by Sarah Groff Hennigh-Palermo
Visualising differences between how two books sound or read.
http://sarahghp.com/projects/book-book.html

#### Mitchel Whitelaw
*Climate Coasters* http://mtchl.net/climate-coasters/, *Measuring Cup* http://mtchl.net/measuring-cup/
and *Climate Bracelet* http://mtchl.net/weather-bracelet/
More examples of physical, tangible design informed by data. How would these object perform if they were put next to others of their category? Would a Climate Coaster in a pub stimulate discussion?

#### *Balance* by Marcel Helmer. 
Using the natural balance of physical options to visualise the friction between action on pollution and personal investment in the matter.
http://www.marcelhelmer.de/

#### *SMS to Paper Planes* by Christian Gross. 
Visualising text messages sent in a long distance relationship. Each message informs the direction, size and amount of folds in each plane. Using blank paper keeps the text content private while still expressing the emotional value of each message through folds. Also good example of data sourcing from your own digital self.
https://www.christiangross.info/en/sms-to-paper-airplanes/
