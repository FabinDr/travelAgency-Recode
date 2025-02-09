// função para a barra do menu
window.addEventListener("scroll", function () {
    // pega o header
    let header = document.querySelector('#header')
    //adciona uma classe ao header usando js
    header.classList.toggle('scroll-class', window.scrollY > 500)
})