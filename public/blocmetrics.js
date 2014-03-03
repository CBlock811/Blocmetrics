// create obj blocmetric

// create method track

blocmetrics = {};

blocmetrics.track = function (event, properties) {
  var capture = document.createElement("SCRIPT");
  whole_url = "http://localhost:9292/events?name=" + event;
    for (var p in properties) {
      if (properties.hasOwnProperty(p)) {
        whole_url = whole_url + "&" + p + "=" + properties[p]
      }
    }
  capture.setAttribute("src", whole_url);
  document.body.appendChild(capture)
};
