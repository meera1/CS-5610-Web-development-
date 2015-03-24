var app = angular.module("FormApp", []);

app.controller("FormController", function ($scope, $http) {
    $http.get("/api/form")
    .success(function (res) {
        $scope.forms = res;
    });

    $scope.remove = function (id)
    {
        $http.delete("/api/form/" + id)
        .success(function (response) {
            $scope.forms = response;
        });
    }
})  