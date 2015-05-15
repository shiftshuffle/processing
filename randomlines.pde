// Pressing Control-R will render this sketch.

//http://tutoprocessing.com/decouverte/processing-js/
//http://processingjs.org/articles/jsQuickStart.html
//http://processingjs.org/tools/processing-helper.html
//http://studio.sketchpad.cc/sp/pad/view/ro.9oX9g1TwyxZH7/rev.851
//http://valentin.dasdeck.com/processing/

int i = 0; 

void setup() {  // this is run once.   
    
    // set the background color
    background(255);
    
    // canvas size (Variable aren't evaluated. Integers only, please.)
    size(300, 300); 
      
    // smooth edges
    smooth();
    
    // limit the number of frames per second
    frameRate(30);
    
    // set the width of the line. 
    strokeWeight(12);
} 

void draw() {  // this is run repeatedly.  

    // set the color
    stroke(random(220), random(255), random(255), 100);
    
    // draw the line
    line(i, 0, random(0, width), height);
    
    // move over a pixel
    if (i < width) {
        i++;
    } else {
        i = 0; 
    }
}

