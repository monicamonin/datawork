//QwwEaD5gj4cAtf0glpnIAA2cMnYtbsFR
var url="https://api.nytimes.com/svc/search/v2/articlesearch.json?q=climate%20change&api-key=QwwEaD5gj4cAtf0glpnIAA2cMnYtbsFR"
var count = 0;
var pagination =0;
var hits=0;

function setup () {
  noCanvas();
  loadJSON(url, gotData);
}

function draw () {
    //print(hits);
    if (hits>0){
        if (count==500 && pagination<1000 && pagination<hits){
            //Just change the search term here to see headlines and images
            //connected to a search term
            //%20 means a space
            var pagurl = "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=metoo&page="+ pagination + "&api-key=QwwEaD5gj4cAtf0glpnIAA2cMnYtbsFR";
            loadJSON(pagurl, gotPagData)
            count=0;
            pagination+=10;
        } else if (pagination>1000 || pagination>hits) {
            noLoop();
        }
    }
    count++;
    print(count);
}

function gotData (data) {
  hits = data.response.meta.hits;
  createP(hits);
}

function gotPagData (data) {
  var articles = data.response.docs;
  for (var i=0; i < articles.length; i++) {
    createP(articles[i].headline.main);
    var imgurl = "http://www.nytimes.com/" + articles[i].multimedia[0].url;
    createImg(imgurl);
  }
}
