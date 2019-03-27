// A2Z F18
// Daniel Shiffman
// http://shiffman.net/a2z
// https://github.com/shiffman/A2Z-F18

var concordance;

function process(txt) {
  clearText();
  concordance = new Concordance();
  concordance.process(txt);
  concordance.sortByCount();
  console.log(concordance);

  var p = createP('');
  p.class('text');
  paragraphs.push(p);

  var ul = createElement('ul', '');
  ul.parent(p);
  var keys = concordance.getKeys();
  for (var i = 0; i < keys.length; i++) {
    var li = createElement('li', keys[i] + ': ' + concordance.getCount(keys[i]));
    li.parent(ul);
  }
  tablebutton.show();
}

/***************************************************/
/* Everything below just handles the text input ****/
/***************************************************/


// Many DOM elements
var dropZone, input, button, sample, clearButton, tablebutton;

// An array to keep track of all the new DOM elements being added
var paragraphs = [];

var inputText = '';
let table;

function setup() {

  noCanvas();

  // Selecting the text field and button
  input = select('#textinput');
  button = select('#submit');
  tablebutton = select('#createtable')
  // What to do when button pressed
  button.mousePressed(handleInput);
  tablebutton.mousePressed(generateOutput);
  tablebutton.hide();

  // Selected the div which will be the "drop zone"
  // for dragging and dropping files
  dropZone = select('#drop_zone');
  // Here are the events to handle
  dropZone.dragOver(highlight);
  dropZone.drop(gotFile, unHighlight);

  // This link allows quick testing with a file
  // that's ready to load instantly
  sample = select('#sample');
  sample.mousePressed(loadFile);
}

function generateOutput () {
  table = new p5.Table();
  table.addColumn('word');
  table.addColumn('count');
  var keys = concordance.getKeys();
  for (var i = 0; i < keys.length; i++) {
    let row = table.addRow();
    row.setString('word', keys[i]);
    row.setString('count', concordance.getCount(keys[i]));
  }
  saveTable(table,'wordcount.csv')
}

// Load a file for quick testing
function loadFile() {
  loadStrings('rainbow.txt', fileLoaded);
}
// When the file is loaded
function fileLoaded(data) {
  var txt = data.join('\n');

  input.html(txt);
  // Note the use of a function that will "process" the text
  // This is b/c the text might come in a number of different ways
  // process(txt);
}

// Handle dropzone events
function highlight() {
  dropZone.style('background', '#AAA');
}

function unHighlight() {
  dropZone.style('background','');
}

function gotFile(file) {
  if (file.type === 'text') {
    // process(file.data);
    inputText += file.data + '\n\n';
    input.html(inputText);
  } else {
    // In case it's some weird other kind of file
    alert('this is not a text file.');
  }
}

// Handle the text input field
function handleInput() {
  process(input.value());
}

// Clear all the divs with remove()
function clearText() {
  //input.html('');
  for (var i = 0; i < paragraphs.length; i++) {
    paragraphs[i].remove();
  }
  paragraphs = [];
}
