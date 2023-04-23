// server
const express = require("express");
const bodyParser = require("body-Parser");

const app = express();

app.set('view engine', 'ejs');

app.get("/", function(req,res) {

  var today = new Date();
  // 如果没有输入任何参数，则Date的构造器会依据系统设置的当前时间来创建一个Date对象。同时创建一个新Date对象的唯一方法是通过new 操作符

  var currentDay = today.getDay();
  var day = "";

  switch (currentDay) {
    case 0:
    day = "Sunday";
    break;
    case 1:
    day = "Monday";
    break;
    case 2:
    day = "Tuesday";
    break;
    case 3:
    day = "Wednesday";
    break;
    case 4:
    day = "Thursday";
    break;
    case 5:
    day = "Friday";
    break;
    case 6:
    day = "Saturday";
    break;
    default:
    console.log("Error:current day is equal to " + currentDay);
  }
  // if you have more than 5 if-else statements, it's better to use switch statement;没有的话，就用if-else 更好。


  // if (today.getDay() === 6 || today.getDay() === 0) {
    // res.send("Yay it's the weekend");
    // 如果要改成html send给browser，那就改成res.send("<h1>Yay it's the weekend</h1>");
    // 如果要send mitiple messages,则改成res.write()就行。
    // 如果要send许多html，那就直接在html file 中编辑，然后sendFile就行res.sendFile(__dirname + "/index.html");
  // } else {
    // res.send("Boo! I have to work!");
  // }
res.render("list1",{kindOfDay: day});
});



app.listen(3000, function() {
  console.log("Server started on port 3000");
});
