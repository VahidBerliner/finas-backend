<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kunde extends Model
{
    use HasFactory;

    // Set the table name
    protected $table = 'kunden';

    // Define the fillable fields (columns you want to allow mass assignment for)
    protected $fillable = [
        'nachname',
        'vorname',
        'email',
        'telefonnummer',
        'strasse_nr',
        'plz',
        'ort',
    ];

    // Disable default timestamps management
    public $timestamps = false;
}
