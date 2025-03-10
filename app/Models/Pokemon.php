<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pokemon extends Model
{
    use HasFactory;

    public $timestamps = false; 
    protected $table = 'pokemon';
    protected $fillable = ['num_pokedex', 'nombre', 'tipo1', 'tipo2', 'imagen'];

    public function tipoPrimario()
    {
        return $this->belongsTo(Tipo::class, 'tipo1');
    }

    public function tipoSecundario()
    {
        return $this->belongsTo(Tipo::class, 'tipo2');
    }
}
