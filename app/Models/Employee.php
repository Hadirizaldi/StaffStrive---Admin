<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Employee extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = "employees";
    protected $primaryKey = "id";

    protected $fillable = [
        'position_id',
        'name',
        'email',
        'phone',
        'gender',
        'age',
        'photo',
        'status'
    ];
}
