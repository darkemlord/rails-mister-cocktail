const initUpdateNavbarOnScroll = () => {
  const navegator = document.querySelector('.navbar-lewagon')
    window.addEventListener('scroll', () => {
       if(window.scrollY > 2){
        navegator.classList.add("navbar-lewagon-white")
        navegator.style.transition = "all 3s"
    }else{
        navegator.classList.remove("navbar-lewagon-white")
    }
    });
}

export { initUpdateNavbarOnScroll };
