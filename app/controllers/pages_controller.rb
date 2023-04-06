require 'json'
class PagesController < ApplicationController
  def home
    data = JSON.parse(File.read('app/assets/data/shoes.json'));
    carts = Hash.new();
    carts[1] = 2;
    carts[2] = 5;
    @cart = carts;
  
    $test = carts;
    #@shoes = JSON.parse(data.to_json);
    @shoes = data;
  end

end
