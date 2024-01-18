<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Position extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = "positions";
    protected $primaryKey = "id";

    protected $fillable = [
        'name',
        'department_id'
    ];
}