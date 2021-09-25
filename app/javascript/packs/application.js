import "bootstrap"
import "mapbox-gl/dist/mapbox-gl.css" // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from "../plugins/init_mapbox"

initMapbox()

const mobileButton = document.querySelector(".navbar-mobile-menu")
const mobileMenu = document.querySelector(".mobile-menu")
mobileButton.addEventListener("click", (event) => {
  if (mobileMenu.style.display === "none") {
    mobileMenu.style.display = "flex"
  } else {
    mobileMenu.style.display = "none"
  }
})

// Code below is to potentially change the menu with scroll

// changeNavbarWithScroll = () => {
//   const navBar = document.getElementById('navbar2');
//   document.addEventListener("scroll", (event) => {
//     if (event.path[1]["scrollY"] > 0) {
//       navBar.style.backgroundColor = "white";
//       navBar.style.borderBottom = "1px lightgrey solid";
//     } else {
//       navBar.style.backgroundColor = "transparent";
//       navBar.style.borderBottom = "0px";
//     };
//   })
// };
