var request = require("request");
var helloWorld = require("../app/index_cicd_tutorial.js")
var base_url = "http://localhost:8080/"

describe("Hello World Server", function() {
  describe("GET /", function() {
    it("returns status code 200", function(done) {
      request.get(base_url, function(error, response, body) {
        eexpect(response.statusCode).toBe(404);
        done();
      });
    });
  });
});

