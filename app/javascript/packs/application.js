// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("chartkick")
require("chartkick").use(require("highcharts"))
// require("chartkick").use(require("highcharts"))
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import Highcharts from 'highcharts';
window.Highcharts = Highcharts;
// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';


document.addEventListener('turbolinks:load', () => {

// event listener for manager submit button
const managerSubmitBtn = document.querySelector('.manager-submit');
let mgrSubmitSound = new Audio ('https://res.cloudinary.com/duj93wpnu/video/upload/v1606924040/Fast-cinematic-whoosh-sound-effect_loc8og.mp3');
if(managerSubmitBtn){
  managerSubmitBtn.addEventListener("click", (event) =>{
  mgrSubmitSound.play();
});
}

// select lists
const individualRankBtn = document.querySelector('.individual');
const teamRankBtn = document.querySelector('.team');

// When we click Team Rank button - Individual list dissappears
teamRankBtn.addEventListener("click", (event) =>{
const individualRankList = document.querySelector('.whole-list');
const teamRankList = document.querySelector('.team-list');

const teamText = document.querySelector('.team-text');
const individualText = document.querySelector('.individual-text');

  if (teamRankList.classList.contains('d-none')) {
    teamRankList.classList.remove('d-none');
    individualRankList.classList.add('d-none');

    individualText.classList.add('gray-out');
    teamText.classList.remove('gray-out');

    teamText.classList.add('bolder');
    individualText.classList.remove('bolder');

  }
});


// When Individual Button is clicked we want Team Rank to dissappear and Individual to show again
individualRankBtn.addEventListener("click", (event) =>{
const individualRankList = document.querySelector('.whole-list');
const teamRankList = document.querySelector('.team-list');

const individualText = document.querySelector('.individual-text');
const teamText = document.querySelector('.team-text');

  if (individualRankList.classList.contains('d-none')) {
    individualRankList.classList.remove('d-none');
    teamRankList.classList.add('d-none');

    individualText.classList.remove('gray-out');
    teamText.classList.add('gray-out');

    individualText.classList.add('bolder');
    teamText.classList.remove('bolder');
  }
});
})
