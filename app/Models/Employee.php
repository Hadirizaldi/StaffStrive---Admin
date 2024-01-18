<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
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

    // relation with positon model
    public function department(): BelongsTo
    {
        return $this->belongsTo(Position::class, 'position_id', 'id');
    }
}
