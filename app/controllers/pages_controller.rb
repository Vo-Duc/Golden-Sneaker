require 'json'
class PagesController < ApplicationController
  $carts = Hash.new();
  def home
    data = JSON.parse(File.read('app/assets/data/shoes.json'));
    
    $carts[1] = 2;
    $carts[2] = 5;
    @cart = $carts;
  
    #$test = $carts;
    #@shoes = JSON.parse(data.to_json);
    @shoes = data;
  end

  def add_to_cart
    $carts[:product_id] = 1;
    redirect_to carts_path(:product_id)
  end

end
