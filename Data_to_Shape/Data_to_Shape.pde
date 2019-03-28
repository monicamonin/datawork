import processing.pdf.*;

// In this example we take the data of a word count we developed using the Concordance code
// and use it to generate circles at different scales

// Here's the Table we'll store our data in.
Table data;

// This variable will scale up the relative areas of our circles.
float scaleModifier = 150;

//Change saveFrame to true if you want to output a PDF
boolean saveFrame = false;

void setup() {
  size(600, 900);

  // Here we load in our data, specifying that it's a CSV file.
  //CSV stands for Comma Seperated Values
  //If you have a TSV (Tab Seperated Values) file just change csv to tsv here
  data = loadTable("wordcount.csv", "header, csv");

  // Calling the noLoop() function keeps the sketch from rendering
  // the same frame over and over again.
  noLoop();
}

void draw() {
  if (saveFrame==true) {
    println("Beginning recording PDF");
    //change the name here if you want to call your PDF something else
    beginRecord(PDF, "graph.pdf");
  }

  background(255);

  // Let's loop through a few of the rows in the dataset, and draw some circles.
  // This variable will control how many rows get displayed on the screen;
  // don't set it higher than the number of rows in the table!
  int numRows = 10;

  for (int i = 0; i < numRows; i++) {
    //get the row numbered i
    TableRow row = data.getRow(i);

    //word out where to draw it on the y axis
    float y = height/(numRows+1) * (i+1);
    noStroke();

    //get the count value in the cuurent row i
    float countVal = row.getFloat("count");
    fill(255, 0, 0);
    //draw a circle where the count determines the area of the circle
    circleByArea(width/2-100, y, countVal);  

    //get the word and display it with the circle
    String word = row.getString("word");
    textAlign(CENTER, CENTER);
    fill(0);
    text(word, 80, y);
  }
  
  if (saveFrame==true) {
    endRecord();
    saveFrame = false;
  }
  // Note that despite pretty different values, the circles aren't hugely different 
  // in size; because visual size increases slowly and non-linearly as area values 
  // go up, this isn't always a great way to display values for comparison!
}

// This function works out the diameter of a circle of a given area,
// so that the size of the circles doesn't blow out of proportion.
// The value of the word count is the 'area' of our circles
// We get the diameter of a circle by dividing its area by PI, 
// then we get its square root to get the radius, we times it by two to get the diameter
// We increase the value of each area by scale modifier as the values might be too small
// so we have to scale them up relative to each other
void circleByArea(float xPos, float yPos, float area) {
  float diameter = 2 * sqrt((area*scaleModifier)/PI);
  ellipse(xPos, yPos, diameter, diameter);
}
