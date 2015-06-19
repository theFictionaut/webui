var callCount = 0;

self.onmessage = function (event) {
    callCount++;
    var response = null;
    // Below is a single line of code seperated for display purposes.
    var req = new XMLHttpRequest();
    //this will change within the ajax call
    var context = this;
    //open
    req.open("GET", "ImageService.ashx", true);
    req.send();

    //anonymous function
    req.onreadystatechange = function () {
        //wait until response
        if (req.readyState == 4) {

            //JSON return
          response = JSON.parse(req.responseText);



          self.postMessage(response);

        }
    }
    


};