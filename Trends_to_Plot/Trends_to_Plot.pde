import processing.pdf.*;

//Simple Data Vis Examples (Scatter Plot)

// These few examples are designed to cover some basic forms of data visualisation, 
// and also take a look at using some custom functions to make your code a bit smarter.
// These examples will all work from a TSV of dummy data about milk, tea and coffee.

// Here's the Table we'll store our data in.
Table data;

// Border will determine how big our margins are, and the other variables here will
// store those for ease of access later
float border = 100;
float plotLeft, plotRight, plotTop, plotBottom;
//Change saveFrame to true if you want to output a PDF
boolean saveFrame = false;

float dataMin = 0;
//we know the max data here is 100 as this is the highest value in Google's trend rating
float dataMax = 100;

void setup() {
  size(2400, 600);

  // Here we load in our data, specifying that it's a TSV file.
  data = loadTable("women-in.tsv", "header, tsv");

  // These margin variables will set themselves based on the border set above.
  plotLeft = border;
  plotRight = width - border;
  plotTop = border;
  plotBottom = height - border;

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

  background(240);

  // This white box will show us our plot area
  rectMode(CORNERS);
  fill(255);
  noStroke();
  rect(plotLeft, plotTop, plotRight, plotBottom);

  // Now, we draw a scatter plot of each of the columns of data
  // using a handy drawPoints() function that Monica wrote.
  // Scroll down to the bottom of the sketch to see how it works.
  drawPoints("Law", color(0, 0, 255));
  drawPoints("STEM", color(255, 0, 0));
  drawPoints("Government", color(190, 145, 5));

  // To make things a tiny bit more legible, lets add in the year labels.
  // (it's not a gorgeous implementation, but you get the idea!)
  for (int i=0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);
    String year = row.getString("Year");
    float x = map(i, 0, data.getRowCount(), plotLeft, plotRight);
    float y = plotBottom+20;

    // We can use translate/rotate to spin the text 90 degrees to fit it better.
    pushMatrix();
    translate(x, y);
    rotate(radians(-90));

    textSize(10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(year, 0, 0);
    popMatrix();
  }
}

// Here's Monica's drawPoints() function. We could just do all of this stuff in draw,
// but moving it into a function keeps things tidy, and makes the draw loop super easy to read through.
// The function just needs to know which column to draw, and what colour to make the points.
// (note that it relies on another custom function that gets the highest value in a table for scaling purposes.) 

void drawPoints(String whichColumn, color collins) {
  noFill();
  stroke(collins);
  strokeWeight(1);
  beginShape();
  
  for (int i=0; i < data.getRowCount(); i++) {
    TableRow row = data.getRow(i);
    float value = row.getFloat(whichColumn);
    String year = row.getString("Year");
    float x = map(i, 0, data.getRowCount(), plotLeft, plotRight);
    float y = map(value, dataMin, dataMax, plotBottom, plotTop);

    //fill(collins);
    //ellipse(x, y, 3, 3);
    vertex(x,y);
  }
  endShape();
}

// This function works by looping through the table, and updating the maximum value
// any time it finds a value bigger than the current maximum.
float getTableMax(String item) {
  float max = 0;
  for (TableRow row : data.rows ()) {
    float currentValue = row.getFloat(item);
    if (currentValue > max) {
      max = currentValue;
    }
  }
  return max;
}
