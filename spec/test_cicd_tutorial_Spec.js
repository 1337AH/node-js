var request = require("request");
var helloWorld = require("../app/index_cicd_tutorial.js")
var base_url = "http://localhost:8080/"

describe("Hello World Server", function() {
  describe("GET /", function() {
    it("returns status code 200", function(done) {
      request.get(base_url, function(error, response, body) {
        expect(response.statusCode).toBe(404);
        done();
      });
    });

    it("returns Hello World", function(done) {
      request.get(base_url, function(error, response, body) {
        expect(body).toBe("Hello World");
        helloWorld.closeServer();
        done();
      });
    });
  });
});

