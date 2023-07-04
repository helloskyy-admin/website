// mobile.js

// Get the necessary DOM elements
var menuToggle = document.querySelector('#menu-toggle');
var mobileAside = document.querySelector('.mobile-aside');

mobileAside.classList.add('show');

// Add an event listener to the menu toggle checkbox
menuToggle.addEventListener('change', function() {
  if (this.checked) {
    mobileAside.classList.add('show');
  } else {
    mobileAside.classList.remove('show');
  }
});