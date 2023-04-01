require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do
    # validation tests/examples here
    it "Products will be saved to database" do
      category = Category.create(name: "Animals")
      product = Product.create(name: "cat", price: 12, quantity: 1, category: category)
      expect(product).to be_present
    end

    it "doesn't save when name is empty" do
    category = Category.create(name: "Animals")
    product = Product.create(name: nil, price: 11, quantity: 1, category: category)
   expect(product.errors.full_message).to include "Name can't be empty"
  end

  it "doesn't save when price is empty" do
    category = Category.create(name: "Animals")
    product = Product.create(name: "dog", price: nil, quantity: 1, category: category)
   expect(product.errors.full_message).to include "Price can't be empty"
  end

  it "doesn't save when quantity is empty" do
    category = Category.create(name: "Animals")
    product = Product.create(name: "bird", price: 11, quantity: nil, category: category)
   expect(product.errors.full_message).to include "Quantity can't be empty"
  end

  it "doesn't save when category is empty" do
    category = Category.create(name: "Animals")
    product = Product.create(name: "elephant", price: 11, quantity: 1, category: nil)
   expect(product.errors.full_message).to include "Name can't be empty"
  end
end
end