function displayDate() {
    document.getElementById("demo").innerHTML = Date();
}

function greet() {
    var d = new Date();
    var time = d.getHours();
    if (time < 10) {
        document.getElementById("demo1").innerHTML = 'Good Morning';
    }

    else if (time > 10 && time < 16) {
        document.getElementById("demo1").innerHTML = 'Good Afternoon';
    }
    else {
        document.getElementById("demo1").innerHTML = 'Good Evening';
    }
}