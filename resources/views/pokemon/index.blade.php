<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pokedex</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="shortcut icon" href="https://images.wikidexcdn.net/mwuploads/wikidex/thumb/0/02/latest/20231226202856/Pok%C3%A9_Ball_%28Ilustraci%C3%B3n%29.png/150px-Pok%C3%A9_Ball_%28Ilustraci%C3%B3n%29.png" type="image/x-icon">
</head>
<body>
@if (session('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        {{ session('success') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
@endif

<script src="{{ asset('js/busqueda.js') }}"></script>

<!-- Navegación, barra de búsqueda y agregar pokemon -->
<nav class="sticky-top pb-0 pt-3 d-flex flex-column justify-content-center align-content-center mt-0" style="background-color: white">
    <h1 class="text-center mb-4">Lista de Pokémon</h1>
    <div class="text-center mb-3 d-flex justify-content-center">
        <input type="text" id="searchInput" class="form-control w-75" placeholder="Buscar Pokémon..." onkeyup="buscarPokemon()" />
    </div>
    <div class="container-fluid justify-content-center w-50 text-center" role="group">
        <h6 class="fw-bold">Ordenar por:</h6>
        <a href="{{ route('pokemon.sort', 'num_pokedex') }}" class="btn btn-outline-primary m-2 text-center" style="width: 100px">Número</a>
        <a href="{{ route('pokemon.sort', 'nombre') }}" class="btn btn-outline-primary m-2 text-center" style="width: 100px">Nombre</a>
        <a href="{{ route('pokemon.sort', 'tipo1') }}" class="btn btn-outline-primary m-2 text-center" style="width: 100px">Tipo</a>
    </div>
    <div class="container-fluid d-flex justify-content-center mt-3 w-75 text-center">
        <a href="{{ route('pokemon.create') }}" class="btn btn-outline-success text-center">Agregar Pokémon</a>
    </div>
    <div id="paginationNav" class="container-fluid d-flex justify-content-center mt-3 mb-0">
    {{ $pokemones->links("vendor.pagination.bootstrap-5") }}
    </div>
</nav>

<!-- Contenedor principal de tarjetas Pokémon -->
<div class="container-fluid d-flex justify-content-center">
    <div class="row row-cols-7 row-cols-md-6 gx-0 gy-0 justify-content-center w-75">
        @foreach($pokemones as $pokemon)
            <div class="col d-flex justify-content-center">

                <!-- Tarjeta individual de Pokémon -->
                <div class="carta card text-start mt-4 border-0" style="width: 200px; max-height: 500px">
                    <img src="{{ $pokemon->imagen }}" class="card-img-top p-2" alt="Imagen de Pokémon" style="background-color: #f2f2f2; max-height: 200px; object-fit: contain;">
                    <div class="card-body d-flex flex-column align-items-start">
                        <h3 class="card-title mb-2 text-black">{{ $pokemon->nombre }}</h3>
                        <p class="card-text mb-2 fw-bolder text-secondary opacity-50">Nº {{ $pokemon->num_pokedex }}</p>
                        <div class="d-flex w-100" style="gap: 2%">
                            <span class="badge text-white tipo-{{ strtolower($pokemon->tipoPrimario->nombre) }}" style="width: 50%">{{ $pokemon->tipoPrimario->nombre ?? 'N/A' }}</span>
                            @if($pokemon->tipoSecundario)
                                <span class="badge text-white tipo-{{ strtolower($pokemon->tipoSecundario->nombre) }}" style="width: 50%">{{ $pokemon->tipoSecundario->nombre }}</span>
                            @endif
                        </div>
                    </div>
                    <div id="no-mover" class="d-flex justify-content-center gap-2 w-100">
                        <a href="{{ route('pokemon.edit', $pokemon->id) }}" class="btn btn-outline-success m-2 text-center w-100 p-2">
                            Editar
                        </a>
                        <form action="{{ route('pokemon.delete') }}" method="POST" class="w-50">
                            @csrf
                            <input type="hidden" name="id" value="{{ $pokemon->id }}">
                            <button type="submit" id="eliminar" class="btn btn-outline-danger m-2 text-center w-100 p-2">
                                Eliminar
                            </button>
                        </form>
                    </div>                    
                </div>
            </div>
        @endforeach
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
