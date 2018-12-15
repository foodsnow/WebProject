var slides = document.querySelector(".main-wrapper .main .slider ul");
var slide = document.querySelectorAll(".slider ul li");
var len = slide.length;

let leftButton = document.querySelector(".main-wrapper .main .slider button#left");
let rightButton = document.querySelector(".main-wrapper .main .slider button#right");

let trans = 0;
let current = 0;

function swipeRight(){
	if (current + 7 >= len) {
		trans = 0;
		current = 0;
	}else{
		trans += slide[0].offsetWidth;
		current += 1;
	}
	slides.style.transform = "translateX(" + -trans + "px)";
}
function swipeLeft(){
	if (current <= 0) {
		trans = slide[0].offsetWidth * (len - 7);
		current = len - 7;
	}else{
		trans -= slide[0].offsetWidth;
		current -= 1;
	}
	slides.style.transform = "translateX(" + -trans + "px)";
}

leftButton.addEventListener("click", swipeLeft);
rightButton.addEventListener("click", swipeRight);
setInterval(swipeRight, 8000);



function showAll(){
	let w = event.currentTarget.parentNode.parentNode.childNodes[3];
	console.log(w.style.display);
	w.style.display = "block";
	console.log(w.style.display);
}

document.querySelector(".sidebar .sidebar-content .part input").addEventListener("click", showAll);
