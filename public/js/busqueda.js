document.addEventListener("DOMContentLoaded", function () {
    console.log("El script de búsqueda se ha cargado correctamente");

    const searchInput = document.getElementById('searchInput');
    const paginationNav = document.getElementById('paginationNav');

    // Agregar el evento al input de búsqueda cuando se hace focus
    searchInput.addEventListener('focus', function () {
        console.log("Focus en el input de búsqueda");
        paginationNav.classList.add('d-none'); // Ocultar paginación cuando el input tiene foco
        buscarPokemon(); // Mostrar todos los Pokémon al inicio

        // Agregar el evento al input de búsqueda
        searchInput.addEventListener('input', buscarPokemon);
    });

    // Agregar el evento al input de búsqueda cuando pierde el foco
    searchInput.addEventListener('blur', function () {
        if (searchInput.value.trim() === "") {
            paginationNav.classList.remove('d-none'); // Mostrar paginación cuando el input pierde foco y está vacío
            location.reload();
        }
    });
});

function buscarPokemon() {
    let query = document.getElementById('searchInput').value;
    console.log("Buscando Pokémon con:", query); // Debugging

    fetch(`/Laravel/Pokedex/public/pokemon/search?query=${query}`)
        .then(response => response.json())
        .then(data => {
            console.log("Resultados:", data); // Debugging
            actualizarPokemons(data);
        })
        .catch(error => console.error('Error al buscar Pokémon:', error));
}

function actualizarPokemons(pokemons) {
    const pokemonContainer = document.querySelector('.row');
    pokemonContainer.innerHTML = ''; // Limpiar la lista actual

    if (pokemons.length === 0) {
        pokemonContainer.innerHTML = '<p class="text-center text-muted">No se encontraron Pokémon.</p>';
        return;
    }

    pokemons.forEach(pokemon => {
        const tipoPrimario = pokemon.tipo_primario && pokemon.tipo_primario.nombre ? pokemon.tipo_primario.nombre : 'Desconocido';
        const tipoSecundario = pokemon.tipo_secundario && pokemon.tipo_secundario.nombre ? pokemon.tipo_secundario.nombre : null;

        const pokemonCard = `
            <div class="col d-flex justify-content-center">
                <div class="card text-start shadow-sm carta border-0 shadow-none mt-4" style="width: 200px; max-height: 500px;">
                    <img src="${pokemon.imagen}" class="card-img-top p-2" alt="Imagen de Pokémon" style="background-color: #f2f2f2; max-height: 200px; max-width: 100%; object-fit: contain;">
                    <div class="card-body d-flex flex-column align-items-start">
                        <h3 class="card-title mb-2 text-dark">${pokemon.nombre}</h3>
                        <p class="card-text mb-2 fw-bolder text-secondary opacity-50">Nº ${pokemon.num_pokedex}</p>
                        <div class="container d-flex justify-content-start w-100 g-0" style="gap: 2%;">
                            <span class="badge text-white text-center tipo-${tipoPrimario.toLowerCase()}" style="width: 50%;">${tipoPrimario}</span>
                            ${tipoSecundario ? `<span class="badge text-white text-center tipo-${tipoSecundario.toLowerCase()}" style="width: 50%;">${tipoSecundario}</span>` : ''}
                        </div>
                    </div>
                </div>
            </div>
        `;
        pokemonContainer.innerHTML += pokemonCard;
    });
}