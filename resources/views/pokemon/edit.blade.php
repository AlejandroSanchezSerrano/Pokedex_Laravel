<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Pokémon</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="https://images.wikidexcdn.net/mwuploads/wikidex/thumb/0/02/latest/20231226202856/Pok%C3%A9_Ball_%28Ilustraci%C3%B3n%29.png/150px-Pok%C3%A9_Ball_%28Ilustraci%C3%B3n%29.png" type="image/x-icon">
</head>
<body class="bg-white d-flex justify-content-center align-items-center min-vh-100">
<div class="col-12 col-md-8 col-lg-6">
    <div class="card shadow-lg rounded border-2 border-primary">
        <div class="card-header text-center bg-white border-bottom border-2 border-primary">
            <h2 class="text-dark">Editar Pokémon: {{ $pokemon->nombre }}</h2>
        </div>
        <div class="card-body p-4">
            <form action="{{ route('pokemon.update', $pokemon->id) }}" method="POST">
                @csrf

                <div class="mb-3">
                    <label class="form-label">Nombre</label>
                    <input type="text" name="nombre" class="form-control rounded-pill" value="{{ $pokemon->nombre }}" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Número en la Pokédex</label>
                    <input type="number" name="num_pokedex" class="form-control rounded-pill" value="{{ $pokemon->num_pokedex }}" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Tipo Primario</label>
                    <select name="tipo_primario_id" class="form-select rounded-pill">
                        @foreach ($tipos as $tipo)
                            <option value="{{ $tipo->id }}" {{ $pokemon->tipo1 == $tipo->id ? 'selected' : '' }}>
                                {{ $tipo->nombre }}
                            </option>
                        @endforeach
                    </select>
                </div>

                <div class="mb-3">
                    <label class="form-label">Tipo Secundario (Opcional)</label>
                    <select name="tipo_secundario_id" class="form-select rounded-pill">
                        <option value="">Ninguno</option>
                        @foreach ($tipos as $tipo)
                            <option value="{{ $tipo->id }}" {{ $pokemon->tipo2 == $tipo->id ? 'selected' : '' }}>
                                {{ $tipo->nombre }}
                            </option>
                        @endforeach
                    </select>
                </div>

                <div class="d-grid gap-2">
                    <button type="submit" class="btn btn-outline-primary btn-lg rounded-pill">Actualizar Pokémon</button>
                </div>
            </form>
        </div>
        <div class="card-footer text-center bg-light rounded-bottom">
            <a href="{{ route('pokemon.index') }}" class="btn btn-outline-secondary rounded-pill">Cancelar</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>