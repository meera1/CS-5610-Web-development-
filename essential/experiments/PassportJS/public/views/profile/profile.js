app.controller("ProfileCtrl", function ($scope, $http) {
 
        $http.get("/profile")
        .success(function (response) {
            console.log(response);
        });
    
});