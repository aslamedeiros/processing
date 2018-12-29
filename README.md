Processing.js - 1.4.1
=========================
a port of the Processing visualization language

About Us
--------
* License:           MIT (see included LICENSE file for full license)
* Original Author:   John Resig (http://ejohn.org)
* Maintainers:       See included AUTHORS file for contributor list
* Web Site:          http://processingjs.org
* Github Repo:       http://github.com/jeresig/processing-js
* Bug Tracker:       http://processing-js.lighthouseapp.com

Contributing and/or Participating Organizations
-----------------------------------------------
* The Processing Project and Community:  http://processing.org
* The Mozilla Foundation:                https://www.mozilla.org/foundation/
* Seneca College (CDOT):                 http://zenit.senecac.on.ca/wiki/

Setting up a Simple Sketch
--------------------------
In order to get a sketch going in the browser you will need to download the
processing.js file and make two new files - one with the extension .html and
the other with the extension .pde.

The .html file will have a link to the processing.js file you have downloaded,
and a canvas tag with a link to the .pde file that you made.

Here is an example of an .html file:

    <!doctype html>
    <html>
      <head>
        <script src="processing.js"></script>
      </head>
      <body>
        <canvas data-processing-sources="mySketch.pde"></canvas>
      </body>
    </html>

The custom attribute _data-processing-sources_ is used to link the sketch to
the canvas.

Here is an example of a Processing sketch:

    void setup() {
      size(200, 200);
      background(125);
      fill(255);
      noLoop();
      PFont fontA = loadFont("courier");
      textFont(fontA, 14);
    }

    void draw() {
      text("Hello Web!", 20, 20);
      println("Hello Error Log!");
    }

Many more examples are available on the Processing.js website, http://processingjs.org/.

Learn More About Processing.js
-------------------------------
Processing developers should start with the Processing.js Quick Start Guide for
Processing Developers at http://processingjs.org/reference/articles/p5QuickStart.

JavaScript developers should start with the Processing.js Quick Start Guide for
JavaScript Developers at http://processingjs.org/reference/articles/jsQuickStart

A more detailed guide is http://processingjs.org/articles/PomaxGuide.html

A complete reference of all Processing.js functions and variables is available
at http://processingjs.org/reference.
