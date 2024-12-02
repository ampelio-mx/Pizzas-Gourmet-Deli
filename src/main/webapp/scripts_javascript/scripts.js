


//función para activar y desactivar menú

const navToogle = document.querySelector(".toogle");
const contain = document.querySelector(".columna-todos-items-nav");

function toggleMenu() {
    contain.classList.toggle("containervisible");
    if (contain.classList.contains("containervisible")) {
        navToogle.setAttribute("aria-label", "Cerrar menú");
    } else {
        navToogle.setAttribute("aria-label", "Abrir menú");
    }
}


if (window.innerWidth <= 768) { // Cambia 768 al ancho que consideres para dispositivos móviles
    navToogle.addEventListener("touchstart", toggleMenu);
} else {
    navToogle.addEventListener("click", toggleMenu);
}


//activa menu pizzas


document.addEventListener("DOMContentLoaded", function () {
    // Obtener el enlace con la clase 'link-menu-item'
    var linkMenuItem = document.querySelector('.link-menu-item');

    // Obtener la lista con la clase 'lista-submenu-pizza'
    var listaSubmenuPizza = document.querySelector('.lista-submenu-pizza');

    // Obtener el contenedor con la clase 'contenedor-menu-pizzas'
    var contenedorMenuPizzas = document.querySelector('.contenedor-menu-pizzas');

    // Variable para rastrear el estado actual del margin-bottom y la visibilidad del submenu
    var marginState = false;
    var submenuVisible = false;

    // Agregar un event listener al enlace
    if (linkMenuItem && contenedorMenuPizzas && listaSubmenuPizza) {
        linkMenuItem.addEventListener('click', function (event) {
            // Verificar si la pantalla es pequeña (ejemplo: ancho menor a 768 píxeles)
            if (window.innerWidth <= 768) {
                // Alternar entre margin-bottom 0 y 21 píxeles
                marginState = !marginState;
                contenedorMenuPizzas.style.marginBottom = marginState ? '21vh' : '0';

                // Alternar la visibilidad del submenu
                submenuVisible = !submenuVisible;
                listaSubmenuPizza.style.display = submenuVisible ? 'block' : 'none';
            }

            // Evitar que el enlace redireccione, si es necesario
            event.preventDefault();
        });
    }
});

   
