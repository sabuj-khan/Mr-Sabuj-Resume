<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Education extends Model


{
    use HasFactory;

    protected $fillable = [ 
        'duration',
        'institute',
        'address',
        'degree',
        'field',
        'details',
    ];

    protected $table = 'educations';

}
