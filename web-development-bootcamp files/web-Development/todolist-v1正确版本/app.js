const express = require("express");
const bodyParser = require("body-Parser");
const date = require(__dirname + "/date.js");

// console.log(date());

const app = express();

const items = ["Buy Food","Cook Food","Eat Food"];
const workItems = [];

app.set('view engine', 'ejs');

app.use(bodyParser.urlencoded({extended: true}));

app.use(express.static("public"));

app.get("/", function(req,res) {

// let day = date.getDate();
const day = date.getDate();

res.render("list",{listTitle: day,newListItems: items});
});
// every time you try to render a list, you have to provide both variables that we want to render

app.post("/",function(req,res){
  let item = req.body.newItem;
  if (req.body.list === "Work"){
    // 在这里list为name, Work为当输入的listTitle为"Work List"时的value
    workItems.push(item);
    res.redirect("/work");
  } else {
    items.push(item);
    res.redirect("/");
  }
});

app.get("/work",function(req,res){
  res.render("list",{listTitle: "Work List", newListItems: workItems});
});

app.get("/about",function(req,res){
  res.render("about");
})


app.listen(3000, function() {
  console.log("Server started on port 3000");
});
