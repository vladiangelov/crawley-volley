import "bootstrap"
import "mapbox-gl/dist/mapbox-gl.css"
import { initMapbox } from "../plugins/init_mapbox"

initMapbox()

const mobileButton = document.querySelector(".navbar-mobile-menu-button")
const mobileMenu = document.querySelector(".mobile-menu")
mobileButton.addEventListener("click", (event) => {
  if (!mobileMenu.classList.contains("mobile-menu-appear")) {
    mobileMenu.classList.add("mobile-menu-appear")
    mobileButton.innerHTML = `<p><i class="fas fa-times"></i></p>`
  } else {
    mobileMenu.classList.remove("mobile-menu-appear")
    mobileButton.innerHTML = `<p><i class="fas fa-bars"></i></p>`
  }
})
