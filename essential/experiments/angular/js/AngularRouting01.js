

var app = angular.module("RoutingApp", ['ngRoute']);

/*app.controller("RoutingController", function ($scope) {
    //$scope.hello = "Hello form routing controller";
});
*/

app.config(['$routeProvider',  //$routeProvider is the centralized controller that is responsible for handeling the events
  function($routeProvider) {
      $routeProvider.
        when('/ron', {
            templateUrl: 'partials/ron.html',
           // controller: 'PhoneListCtrl'
        }).
        when('/hermoine', {
            templateUrl: 'partials/hermoine.html',
            //controller: 'PhoneDetailCtrl'
        }).
          when('/harry', {
              templateUrl: 'partials/harry.html',
              // controller: 'PhoneDetailCtrl'
          }).
        otherwise({
            redirectTo: '/harry'
        });
  }]);