function sign(){
	let sign_form = document.querySelector("header .top form");
	if (sign_form.style.display === "none") {
		sign_form.style.display = "block";
	}else{
		sign_form.style.display = "none";
	}
}
document.querySelector("header .top .sign span").addEventListener("click", sign);


let slides = document.querySelector(".main-wrapper .main .slider ul");
let slide = document.querySelectorAll(".slider ul li");
let len = slide.length;

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


let all = document.querySelectorAll(".sidebar .sidebar-content .part input[type=text]");
let allSelect = document.querySelectorAll(".sidebar .sidebar-content .part .chosen-multi");
let arr_genre = [];
let arr_type = [];


function ShowOrHide(){
	let w = event.currentTarget.parentNode.childNodes[7].childNodes[0];
	if(w.style.display === "block"){
		w.style.display = "none";
	}else{
		w.style.display = "block";
	}
}
function selectAll(arr){
	for(let option of arr){
		option.selected = true;
	}
}
function fullBlank(arr){
	let w = event.currentTarget.parentNode.parentNode.parentNode.childNodes[3];
	while(w.firstChild){
		w.removeChild(w.firstChild);
	}
	for(let option of arr){
		let span = document.createElement("span");
		span.textContent = option.textContent;
		w.appendChild(span);
	}
}
function onRowClick(arr){
	let option = event.currentTarget;
	if (arr.includes(option)) {
		option.selected = false;
		arr.splice(arr.indexOf(option),1);
	}else{
		arr.push(option);
	}
	selectAll(arr);
	fullBlank(arr);
}
function forGenre(){
	onRowClick(arr_genre);
}
function forType(){
	onRowClick(arr_type);
}
function initSelect(){
	let genre = document.querySelector(".sidebar .sidebar-content .part .genre");
	for(let option of genre.options){
		option.addEventListener("click", forGenre);
	}
	let type = document.querySelector(".sidebar .sidebar-content .part .type");
	for(let option of type.options){
		option.addEventListener("click", forType);
	}
	let i = 0;
	for(let item of all){
		item.addEventListener("click", ShowOrHide);
		item.placeholder = allSelect[i].dataset.placeholder;
		i++;
	}
}
initSelect();
