var app = angular.module("WebsiteApp", []);

app.controller("WebsiteController", function ($scope, $http) {
    $http.get("/api/website")
    .success(function (res) {
        $scope.websites = res;
    });
    
    $scope.addWebsite = function(name)
    {
 
        $http.post("/api/website/" + name)
        .success(function (res) {
            $scope.websites = res;
        });

    }


    $scope.remove = function (_id)
    {
        $http.delete("/api/website/" + _id)
        .success(function(res)
        {
            $scope.websites = res;
        });
        }

})