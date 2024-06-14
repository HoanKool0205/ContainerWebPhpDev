<?php

namespace App\Http\Livewire\Admin;

use App\Models\Contact;
use Livewire\Component;

class AdmimContactComponent extends Component
{
    public function render()
    {
        $contacts = Contact::paginate(12);
        return view('livewire.admin.admim-contact-component',['contacts'=>$contacts])->layout('layouts.base');
    }
}
