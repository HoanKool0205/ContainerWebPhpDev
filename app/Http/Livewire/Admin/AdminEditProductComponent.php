<?php

namespace App\Http\Livewire\Admin;

use App\Models\Category;
use App\Models\Product;
use Carbon\Carbon;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\File;

class AdminEditProductComponent extends Component
{
    use WithFileUploads;

    public $name;
    public $slug;
    public $short_description;
    public $description;
    public $regular_price;
    public $sale_price;
    public $SKU;
    public $stock_status;
    public $featured;
    public $quantity;
    public $image;
    public $category_id;
    public $newimage;
    public $product_id;
    public $images;
    public $newimages;

    public function mount($product_slug)
    {
        $product = Product::where('slug', $product_slug)->firstOrFail();
        $this->fill($product->toArray());
        $this->images = explode(",", $product->images);
        $this->product_id = $product->id;
        $this->category_id = $product->category_id; // Ensure category_id is set for initial load
    }

    public function generateSlug()
    {
        $this->slug = Str::slug($this->name, '-');
    }

    public function updated($fields)
    {
        $this->validateOnly($fields, [
            'name' => 'required',
            'slug' => 'required',
            'short_description' => 'required',
            'description' => 'required',
            'regular_price' => 'required|numeric',
            'sale_price' => 'nullable|numeric',
            'SKU' => 'required',
            'stock_status' => 'required',
            'quantity' => 'required|numeric',
            'category_id' => 'required',
            'newimage' => 'nullable|mimes:jpeg,png',
            'newimages.*' => 'nullable|mimes:jpeg,png'
        ]);
    }

    public function updateProduct()
    {
        $validatedData = $this->validate([
            'name' => 'required',
            'slug' => 'required',
            'short_description' => 'required',
            'description' => 'required',
            'regular_price' => 'required|numeric',
            'sale_price' => 'nullable|numeric',
            'SKU' => 'required',
            'stock_status' => 'required',
            'quantity' => 'required|numeric',
            'category_id' => 'required',
            'newimage' => 'nullable|mimes:jpeg,png',
            'newimages.*' => 'nullable|mimes:jpeg,png'
        ]);

        $product = Product::find($this->product_id);

        if (!$product) {
            session()->flash('error', 'Product not found.');
            return;
        }

        $product->name = $this->name;
        $product->slug = $this->slug;
        $product->short_description = $this->short_description;
        $product->description = $this->description;
        $product->regular_price = $this->regular_price;
        $product->sale_price = $this->sale_price;
        $product->SKU = $this->SKU;
        $product->stock_status = $this->stock_status;
        $product->featured = $this->featured;
        $product->quantity = $this->quantity;
        $product->category_id = $this->category_id;

        if ($this->newimage) {
            $this->handleSingleImageUpload($product);
        }

        if ($this->newimages) {
            $this->handleMultipleImagesUpload($product);
        }

        $product->save();
        session()->flash('message', 'Product has been updated successfully');
    }

    private function handleSingleImageUpload($product)
    {
        try {
            if ($product->image && File::exists(public_path('assets/images/products/' . $product->image))) {
                File::delete(public_path('assets/images/products/' . $product->image));
            }

            $imageName = Carbon::now()->timestamp . '.' . $this->newimage->extension();
            $this->newimage->storeAs('products', $imageName);
            $product->image = $imageName;
        } catch (\Exception $e) {
            session()->flash('error', 'Error uploading image: ' . $e->getMessage());
        }
    }

    private function handleMultipleImagesUpload($product)
    {
        try {
            if ($product->images) {
                $images = explode(",", $product->images);
                foreach ($images as $image) {
                    if ($image && File::exists(public_path('assets/images/products/' . $image))) {
                        File::delete(public_path('assets/images/products/' . $image));
                    }
                }
            }

            $imagesname = [];
            foreach ($this->newimages as $key => $image) {
                $imgName = Carbon::now()->timestamp . $key . '.' . $image->extension();
                $image->storeAs('products', $imgName);
                $imagesname[] = $imgName;
            }
            $product->images = implode(",", $imagesname);
        } catch (\Exception $e) {
            session()->flash('error', 'Error uploading images: ' . $e->getMessage());
        }
    }

    public function render()
    {
        $categories = Category::all();
        return view('livewire.admin.admin-edit-product-component', ['categories' => $categories])->layout('layouts.base');
    }
}
