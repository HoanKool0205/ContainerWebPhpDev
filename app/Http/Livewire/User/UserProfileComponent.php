<?php

namespace App\Http\Livewire\User;

use App\Models\Profile;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class UserProfileComponent extends Component
{
    public function render()
    {
        $user = Auth::user();

        // Ensure the user has a profile
        if (!$user->profile) {
            $user->profile()->create([
                // Set default values for the profile here if needed
                'mobile' => '',
                'image' => '',
                'line1' => '',
                'line2' => '',
                'city' => '',
                'province' => '',
                'country' => '',
                'zipcode' => '',
            ]);
        }

        // Reload the user to get the fresh profile relationship
        $user = $user->fresh();

        return view('livewire.user.user-profile-component', ['user' => $user])->layout('layouts.base');
    }
}


