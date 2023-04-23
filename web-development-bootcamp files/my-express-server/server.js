// jshint esversion:6
const express = require("express");

const app = express();

app.get("/",function(req,res){
  // console.log(request);
  // response.send("hello");
  res.send("<h1>Hello,World</h1>");
});

app.get("/contact",function(req,res){
  res.send("Contact me at: Janet@gmail.com");
});

app.get("/about",function(req,res){
  res.send("My name is Yaowenjing. I'm 22 years old.");
});

app.get("/hobby",function(req,res){
  res.send("<ul><li>coffee</li><li>code</li><li>beer</li></ul>");
});

app.listen(3000,function(){
  console.log("Server started on port 3000");
});
