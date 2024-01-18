<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
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

    // relation with department model
    public function department(): BelongsTo
    {
        return $this->belongsTo(Department::class, 'department_id', 'id');
    }

    // relation with employee model
    public function employee(): HasMany
    {
        return $this->hasMany(Employee::class, 'position_id', 'id');
    }
}
