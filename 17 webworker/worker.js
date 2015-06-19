var callCount = 0;

self.onmessage = function (event) {
    callCount++;
    // Below is a single line of code seperated for display purposes.
    self.postMessage(event.data +
                     ' : Hello from your worker ! [' + callCount + ']');
};