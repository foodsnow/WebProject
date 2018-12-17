function sign(){
	let sign_form = document.querySelector("header .top form");
	if (sign_form.style.display === "none") {
		sign_form.style.display = "block";
	}else{
		sign_form.style.display = "none";
	}
}
document.querySelector("header .top .sign span").addEventListener("click", sign);

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


function changeEpisode(){
	let selected = document.querySelector(".item .video .episodes .selected");
	if (selected) {
		selected.classList.remove("selected");
	}
	event.currentTarget.classList.add("selected");
	let player = document.querySelector("iframe");
	console.log(player);
	player.src = event.currentTarget.dataset.src;
}

let episodes = document.querySelectorAll(".item .video .episodes div");
for(let div of episodes){
	div.addEventListener("click", changeEpisode);
}

function lightOff(){
	event.currentTarget.style.display = "none";
	event.currentTarget.removeEventListener("click", lightOff);
} 
function lightOn(){
	let overlay = document.querySelector(".cinema-overlay");
	overlay.style.display = "block";
	overlay.addEventListener("click", lightOff);
}
document.querySelector(".item .video .video-content button").addEventListener("click", lightOn);