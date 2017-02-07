describe("CustomerSearchController", function() {
  describe("Initialization", function() {
    var scope = null, controller = null;

    beforeEach(module("customers"));

    beforeEach(inject(function($controller, $rootScope) {
      scope = $rootScope.$new();
      console.log("foo");
      controller = $controller("CustomerSearchController", {
        $scope = scope
      });
    }));

    it("is true", function() {
      expect(true).toBe(true);
    });
  });
});
