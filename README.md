# Data Work

## Data Scraping

In the first workshop we will look at scraping text and image data from the web and text corpuses. Included in this 'datawork' GitHub repository are a number of example techniques and files that you can scaffold off and use in your own collection and structuring of datasets.

When working with data be aware that all datasets are situated within and produced through broader socio-material practices. This means that all data sets are biased, no data set is objective or 'neutral'. All data has a history that reflects the broader material/social/political/cultural diagrams through which it is formed. Here is an example of how societal racism materialised in Google's image search algorithm https://www.theguardian.com/commentisfree/2016/jun/10/three-black-teenagers-google-racist-tweet. Another thing to consider is who is able to be represented and in what ways are they able to represent themselves? Not all communities of people have equal representation on the internet. For example consider the under-representation of content on women (and other groups) on Wikipedia http://www.artandfeminism.org/.

## API Example / Twitter API with Node.js
Many online platforms allow you to access their online datasets and services using an API (Application Programming Interfaces). You can think of APIs as translators that allow your code to talk to and their code. See here for a list of APIs https://any-api.com/.

In the example file we use a program to send a request for data to Twitter's API and get a response. Twitter have recently changed rules regarding their API constraining use of its API and charging for access privileges. With a free API account you can now only access the past 7 days of tweets. To run this on your own you will need to request a Twitter Developer account and create an API Key. Instructions on how to do this can be found at https://developer.twitter.com/content/developer-twitter/en.html.

(Instructions for Mac)
1. Download and install Node.js https://nodejs.org/en/. Node is basically a open source server environment, where you can make your own server.
2. Open up Terminal
3. Type 'node' and press enter, if you see a > symbol come up that means Node is installed and running. You could use this prompt to run Javascripty things in the terminal window, but we are just using this to make sure Node is working.
4. Type .exit to exit
5. Download the files for this repository and unzip the folder
6. Type 'cd ' into the terminal window and drag the TwitterSearch folder into the window. You will see something like 'cd /Users/115223/Documents/TwitterSearch '. Hit return. The cd command in terminal allows you to move between folders on your computer. Basically this will mean we will be working from the TwitterSearch folder and can access the files inside without having to type in their full address on the machine.
7. Open up the twitter.js file in a code editor. Add your API keys to the fields.
8. Go back to terminal and type 'node twitter.js'. This will run the this javascript file using node. This file requests a search from Twitter's api, does some quick and rough data massaging and saves it out a .csv file. Open the .csv file and take a look, you will see a table of tweets on the climate strike by date.
9. Edit the search parameters to search for different things!

This is a VERY quick overview, for more explanation on how Node and talking to the Twitter API works, watch the first four videos of Shiffmans Twitterbot Tutorial https://www.youtube.com/watch?v=RF5_MPSNAtU&list=PLRqwX-V7Uu6atTSxoRiVnSuOn6JHnq2yV. 

### TweetDeck
An easy way to access historical tweets is through TweetDeck https://tweetdeck.twitter.com/.

### More extensive coding and API tutorial playlist
https://www.youtube.com/watch?v=rJaXOFfwGVw&list=PLRqwX-V7Uu6a-SQiI4RtIwuOrLJGnel0r&index=1
And see the NYT example here too.

## Google Trends
Using Google Trends is an easy way to see trends in Google searches around ideas or events. You can compare terms and also download the data as a CSV file. We have an example file plotting 3 trends of Women in Law, Women in Stem and Women in Government that was used as an example in Google's International Women's Day story. See the Processing file here called Trends_to_Plot.

See story on search trends relevant to International Women's Day https://trends.google.com/trends/story/US_cu__IBrPloBAADNPM_en.

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

### Simple Word Count of a Text Corpus (Concordance)
See the Concordance example to be able to generate a word count on a body of text. See the Book-Book and Speech Comparison examples as they both use word counts.

After you have downloaded the example files here. Open the index.html file up in your browser. Everything else is pretty self explanatory!

### Distant Reading
Andrew will add something here soon!

## Scrape
You can also scrape your own datasets together from disparate searches and sources and collate them into a dataset. We will not be covering this in class and it is not something you will have time for for this workshop but it is something to be aware of as a practice. Artist Everest Pipkin argues that scraping your own datasets can allow you to be more careful, ethical and tactical in where you source data from and who you seek to represent (and how they are represented) in datasets. 
“Scraping is perfect for data that is ungathered, under-respected, or generally lacks the resources to be bundled into a set; data that is 'floating'" (Everest Pikin quoted by one of their students somewhere in the jumble of here) http://sfpc.io/codesocieties_students/).

If you are curious there are tutorials you can find online on how to use Node and node libraries to scrape data programatically.

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
