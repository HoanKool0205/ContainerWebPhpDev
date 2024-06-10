<?php

namespace App\Http\Livewire;

use Livewire\Component;

class CartCountComponent extends Component
{
    protected $listeners = ['refreshComponent' =>'refresh'];

    public function refresh()
    {
        // This method allows the component to be refreshed when called.
    }

    public function render()
    {
        return view('livewire.cart-count-component');
    }
}
