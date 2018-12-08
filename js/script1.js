var slides = document.querySelector(".main-wrapper .main .slider ul");
var slide = document.querySelectorAll(".slider ul li");
var len = slide[0].offsetWidth * slide.length;

let trans = 0;

function doSlide(){
	if (trans + 8 * slide[0].offsetWidth <= len + slide[0].offsetWidth/2 &&
		trans + 8 * slide[0].offsetWidth >= len - slide[0].offsetWidth/2) {
		trans = 0;
	}
	else{
		trans += slide[0].offsetWidth;
	}
	slides.style.transform = "translateX(" + -trans + "px)";
}

setInterval(doSlide, 8000);