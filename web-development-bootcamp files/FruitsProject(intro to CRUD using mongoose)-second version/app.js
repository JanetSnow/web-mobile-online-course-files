const mongoose = require('mongoose');
// create connection to mongodb and connect to the specific database we created before or we wanna create now.
mongoose.connect("mongodb://localhost:27017/fruitsDB", {useNewUrlParser: true});

// insert data --frist create the schema(structure of our data)
const fruitSchema = new mongoose.Schema({
  name: {
    type:String,
    required: [true, "Please check your data entry, no name specified!"]
  },
  rating: Number,
  review: String
});

// use the schema to create a mongoose model: the first param is collection that is singular form and
// will be tranformed behind the scene to a pluralized form to create your collection.
const Fruit = mongoose.model("Fruit", fruitSchema);

// create document from this model
const fruit = new Fruit ({
  name: "Apple",
  rating: 7,
  review: "Pretty solid as fruit"
});
// it will save the fruit document into a fruit collection inside our fruitsDB. but everytime you run
// node app.js it will save the same fruit so lots of repeated stuff, we need to comment it.
// fruit.save();
const kiwi = new Fruit ({
  name: "kiwi",
  rating: 10,
  review: "fantastic"
});
//
// const orange = new Fruit ({
//   name: "orange",
//   rating: 8,
//   review: "sour and sweeet, good taste"
// });
//
// const banana = new Fruit ({
//   name: "banana",
//   rating: 8,
//   review: "very healthy fruit"
// });


//it will be saved repeatedly as save(), we need to comment it after the first node app.js
// Fruit.insertMany([kiwi, orange, banana], function(err){
//   if (err){
//     console.log(err);
//   } else {
//     console.log("successfully inserted all fruits to fruitDB");
//   }
// });

const pineapple = new Fruit ({
  name: "pineapple",
  rating:9,
  review: "awesome fruit"
});

// pineapple.save();

Fruit.find(function(err, fruits){
  if (err){
    console.log(err);
  } else {
    // mongoose.connection.close();
    fruits.forEach(fruit => {
      console.log(fruit.name);
    });
  }
});

// Fruit.updateOne({_id: "6260e3fe4d3e2b3b2cc32ea3"}, {review: "yummy but too solid"}, function(err){
//   if (err){
//     console.log(err);
//   } else {
//     console.log("successfully updated the document.");
//   }
// });

// Fruit.deleteOne({_id: "6260e3fe4d3e2b3b2cc32ea3"}, function(err){
//   if (err){
//     console.log(err);
//   }else{
//     console.log("successfully deleted the document.");
//   }
// });

const plSchema = new mongoose.Schema({
  name:String,
  age: Number,
  favouriteFruit: fruitSchema
});

const Person = mongoose.model("Person", plSchema);

const person = new Person ({
  name: "John",
  age: 17,
});
// person.save();

const Amy = new Person({
  name: "Amy",
  age: 22,
  favouriteFruit: pineapple
});

// Amy.save();

// Person.deleteMany({name: "John"}, function(err){
//   if (err){
//     console.log(err);
//   } else {
//     console.log("successfully deleted all documents with the name of John.");
//   }
// });

// Person.updateOne({name: "John"}, {favouriteFruit: kiwi}, function(err){
//   if (err){
//     console.log(err);
//   }else{
//     console.log("successfully updated document with the name of John.");
//   }
// });
