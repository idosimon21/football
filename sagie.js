﻿setInterval("myTimer()", 1000);
function myTimer() {
    var d = new Date();
    var t = d.toLocaleTimeString();
    document.getElementById("myTime").innerHTML = t;
}