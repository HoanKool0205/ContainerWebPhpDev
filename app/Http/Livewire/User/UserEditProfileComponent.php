<?php

namespace App\Http\Livewire\User;

use App\Models\Profile;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithFileUploads;

class UserEditProfileComponent extends Component
{
    use WithFileUploads;

    public $name;
    public $email;
    public $mobile;
    public $image;
    public $line1;
    public $line2;
    public $city;
    public $province;
    public $country;
    public $zipcode;
    public $newimage;

    public function mount()
    {
        $user = Auth::user();
        $this->name = $user->name;
        $this->email = $user->email;

        if ($user->profile) {
            $this->mobile = $user->profile->mobile;
            $this->image = $user->profile->image;
            $this->line1 = $user->profile->line1;
            $this->line2 = $user->profile->line2;
            $this->city = $user->profile->city;
            $this->province = $user->profile->province;
            $this->country = $user->profile->country;
            $this->zipcode = $user->profile->zipcode;
        }
    }


    

    public function updateProfile()
    {
        $user = Auth::user();
        $user->name = $this->name;
        $user->save();

        $profile = $user->profile ?: new Profile();
        $profile->user_id = $user->id;
        $profile->mobile = $this->mobile;
        $profile->line1 = $this->line1;
        $profile->line2 = $this->line2;
        $profile->city = $this->city;
        $profile->province = $this->province;
        $profile->country = $this->country;
        $profile->zipcode = $this->zipcode;

        if ($this->newimage) {
            $imageName = $this->newimage->store('profile', 'public');
            $profile->image = $imageName;
        }

        $profile->save();

        session()->flash('message', 'Profile updated successfully.');
    }

    public function render()
    {
        return view('livewire.user.user-edit-profile-component')->layout('layouts.base');
    }
}
