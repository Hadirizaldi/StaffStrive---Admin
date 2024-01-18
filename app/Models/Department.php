<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Department extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = "departments";
    protected $primarykey = "id";

    protected $fillable = [
        'name'
    ];

    public function positon(): HasMany
    {
        return $this->hasMany(Position::class, 'department_id', 'id');
    }
}
