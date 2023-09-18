<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Disponibilidade extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'DiaX',
        'DisponibilidadeDeDia',
        'DisponibilidadeDeNoite',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
