const navbarScroll = () => {
  const nav = document.querySelector(".navbar-sticky")
  if (document.querySelector('#home')) {
    window.addEventListener("scroll", (event) => {
      if (window.scrollY > 100) {
        nav.classList.add("navbar-white")
      } else {
        nav.classList.remove("navbar-white");
      };
    });
  }
};

export { navbarScroll };
