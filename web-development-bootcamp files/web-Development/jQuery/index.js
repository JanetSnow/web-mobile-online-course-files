$("h1").css("color","yellow");
$("input").keypress(function(event){
  $("h1").text(event.key);
});

$("button").on("click",function(){
  $("h1").slideToggle();
  // $("h1").fadeIn().fadeOut();
});
// mouseover可以用其他的event reference来代替，比如click
