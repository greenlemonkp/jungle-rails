class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['HTTP_ADMIN_USERNAME'], password: ENV['HTTP_ADMIN_PASSWORD']
  def show
    @number_of_products = Product.all.count
    @number_of_categories = Category.all.length
  end
end
