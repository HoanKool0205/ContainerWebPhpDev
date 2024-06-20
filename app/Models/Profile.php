<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'user_id',
        'mobile',
        'image',
        'line1',
        'line2',
        'city',
        'province',
        'country',
        'zipcode',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }
}

