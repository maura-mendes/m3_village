const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
const ballonLogo = document.querySelector('#mongolfier');
const logo = document.querySelector('#logo');
const links = document.querySelector('.navbar-links');

  if (navbar) {
    window.addEventListener('scroll', () => {
    	
      if (window.scrollY >= 200) {
        navbar.classList.add('navbar-wagon-red');
         navbar.classList.add('navbar-links2');
        ballonLogo.src = "";
        logo.src = "assets/logo@2x.png";


      } else {
        navbar.classList.remove('navbar-wagon-red');
        ballonLogo.src = "assets/balloons@3x.png";
       	logo.src = "assets/logo-col-3x.png";
      }
    });
  }
};

export { initUpdateNavbarOnScroll };
