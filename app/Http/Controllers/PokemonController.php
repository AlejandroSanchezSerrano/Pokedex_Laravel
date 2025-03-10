<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pokemon;
use App\Models\Tipo;

class PokemonController extends Controller
{
    public function index()
    {
        $pokemones = Pokemon::with(['tipoPrimario', 'tipoSecundario'])->orderBy('num_pokedex')->paginate(18); // Cambia 10 por el número de elementos por página que desees
        return view('pokemon.index', compact('pokemones'));
    }

    public function getAllPokemons()
    {
        $pokemons = Pokemon::with(['tipoPrimario', 'tipoSecundario'])->get();
        return response()->json($pokemons);
    }

    public function search(Request $request)
    {
        $query = $request->get('query', '');

        $pokemones = Pokemon::with(['tipoPrimario', 'tipoSecundario'])
            ->where('nombre', 'LIKE', "%{$query}%")
            ->orWhere('num_pokedex', 'LIKE', "%{$query}%")
            ->orWhereHas('tipoPrimario', function ($queryBuilder) use ($query) {
                $queryBuilder->where('nombre', 'LIKE', "%{$query}%");
            })
            ->orWhereHas('tipoSecundario', function ($queryBuilder) use ($query) {
                $queryBuilder->where('nombre', 'LIKE', "%{$query}%");
            })
            ->orderBy('num_pokedex')
            ->get();

        return response()->json($pokemones);
    }

    public function sort($criteria)
    {
        if (!in_array($criteria, ['num_pokedex', 'nombre', 'tipo1'])) {
            $criteria = 'num_pokedex';
        }

        $pokemones = Pokemon::with(['tipoPrimario', 'tipoSecundario'])
            ->orderBy($criteria)
            ->paginate(18);

        return view('pokemon.index', compact('pokemones'));
    }

    public function destroy(Request $request)
    {
        $pokemon = Pokemon::find($request->id);

        if (!$pokemon) {
            return redirect('/pokemon')->with('error', 'Pokémon no encontrado.');
        }

        $pokemon->delete();

        return redirect()->route('pokemon.index')->with('success', 'Pokémon eliminado exitosamente.');
    }

    public function create()
    {
        // Obtener todos los tipos
        $tipos = Tipo::all();
        return view('pokemon.create', compact('tipos'));
    }

    public function store(Request $request)
    {
        // Validación de datos
        $validated = $request->validate([
            'num_pokedex' => 'required|string|max:255',
            'nombre' => 'required|string|max:255',
            'tipo1' => 'required|exists:tipo,id',
            'tipo2' => 'nullable|exists:tipo,id',
        ]);

        // Generar la URL dinámica de la imagen
        $imagenUrl = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/' . str_pad($validated['num_pokedex'], 3, '0', STR_PAD_LEFT) . '.png';

        // Crear el nuevo Pokémon
        $pokemon = new Pokemon([
            'num_pokedex' => $validated['num_pokedex'],
            'nombre' => $validated['nombre'],
            'tipo1' => $validated['tipo1'],
            'tipo2' => $validated['tipo2'],
            'imagen' => $imagenUrl,
        ]);
        $pokemon->save();

        // Redirigir al listado de Pokémon con mensaje de éxito
        return redirect()->route('pokemon.index')->with('success', 'Pokémon agregado exitosamente.');
    }

    public function edit($id)
    {
        $pokemon = Pokemon::with(['tipoPrimario', 'tipoSecundario'])->findOrFail($id);
        $tipos = Tipo::all(); // Suponiendo que tienes una tabla de tipos en la BD
        return view('pokemon.edit', compact('pokemon', 'tipos'));
    }

    public function update(Request $request, $id)
    {
        // Validación de datos
        $request->validate([
            'nombre' => 'required|string|max:255',
            'num_pokedex' => 'required|string|max:255',
            'imagen' => 'nullable|url',
            'tipo_primario_id' => 'required|exists:tipo,id',
            'tipo_secundario_id' => 'nullable|exists:tipo,id',
        ]);

        // Buscar el Pokémon a actualizar
        $pokemon = Pokemon::findOrFail($id);

        // Si no se proporciona una imagen, generarla dinámicamente con el nuevo número de Pokédex
        $imagenUrl = 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/' . str_pad($request->num_pokedex, 3, '0', STR_PAD_LEFT) . '.png';

        // Actualizar los datos del Pokémon
        $pokemon->update([
            'nombre' => $request->nombre,
            'num_pokedex' => $request->num_pokedex,
            'imagen' => $imagenUrl,
            'tipo1' => $request->tipo_primario_id,
            'tipo2' => $request->tipo_secundario_id,
        ]);

        // Redirigir con mensaje de éxito
        return redirect()->route('pokemon.index')->with('success', 'Pokémon actualizado correctamente');
    }
}
