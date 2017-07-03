// $("html, body").animate({ scrollTop: $(document).height() }, 4000);
// setTimeout(function() {
//    $('html, body').animate({scrollTop:0}, 10000); 
// },4000);
// var scrolltopbottom =  setInterval(function(){
//      // 4000 - it will take 4 secound in total from the top of the page to the bottom
//     $("html, body").animate({ scrollTop: $(document).height() }, 10000);
//     setTimeout(function() {
//        $('html, body').animate({scrollTop:0}, 10000); 
// 	},4000);
// },4000);

// 	var height = 500;
// setInterval(function(){
// 	// console.log("hello");
// 	window.scrollTo(0, height += 500);
// }, 5000);

//scroll to bottom
setInterval(function(){

    //time to scroll to bottom
    $("html, body").animate({ scrollTop: $(document).height() }, 10000);

    //scroll to top
    setTimeout(function() {
       $('html, body').animate({scrollTop:0}, 10000);
    },2000);//call every 2000 miliseconds

},2000);//call every 2000 miliseconds