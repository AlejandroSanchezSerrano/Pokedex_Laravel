<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Pokémon</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="https://images.wikidexcdn.net/mwuploads/wikidex/thumb/0/02/latest/20231226202856/Pok%C3%A9_Ball_%28Ilustraci%C3%B3n%29.png/150px-Pok%C3%A9_Ball_%28Ilustraci%C3%B3n%29.png" type="image/x-icon">
</head>
<body class="bg-white d-flex justify-content-center align-items-center min-vh-100">
<div class="col-12 col-md-8 col-lg-6">
    <div class="card shadow-lg rounded border-2 border-primary">
        <div class="card-header text-center bg-white border-bottom border-2 border-primary">
            <h2 class="text-dark">Datos del Pokemon</h2>
        </div>
        <div class="card-body p-4">
            @if(session('success'))
                <div class="alert alert-success">{{ session('success') }}</div>
            @endif

            @if($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form action="{{ route('pokemon.store') }}" method="POST">
                @csrf

                <div class="mb-3">
                    <label for="num_pokedex" class="form-label">Número de Pokédex</label>
                    <input type="text" class="form-control rounded-pill" id="num_pokedex" name="num_pokedex" placeholder="Ejemplo: 001" required>
                </div>

                <div class="mb-3">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control rounded-pill" id="nombre" name="nombre" placeholder="Ejemplo: Bulbasaur" required>
                </div>

                <div class="mb-3">
                    <label for="tipo1" class="form-label">Tipo Primario</label>
                    <select class="form-select rounded-pill" id="tipo1" name="tipo1" required>
                        <option value="">Seleccionar Tipo</option>
                        @foreach($tipos as $tipo)
                            <option value="{{ $tipo->id }}">{{ $tipo->nombre }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="mb-3">
                    <label for="tipo2" class="form-label">Tipo Secundario (Opcional)</label>
                    <select class="form-select rounded-pill" id="tipo2" name="tipo2">
                        <option value="">Seleccionar Tipo</option>
                        @foreach($tipos as $tipo)
                            <option value="{{ $tipo->id }}">{{ $tipo->nombre }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-outline-primary btn-lg rounded-pill">Agregar Pokémon</button>
                </div>
            </form>
        </div>
        <div class="card-footer text-center bg-light rounded-bottom">
            <a href="{{ route('pokemon.index') }}" class="btn btn-outline-secondary rounded-pill">Volver a la lista</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>