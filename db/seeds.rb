# encoding: utf-8
require './models/product.rb'
require './models/user.rb'
require 'json'
require 'digest/sha1'

Product.delete_all

items = []
items.push :name => '可口可乐', :unit => '瓶', :price => 3.00, :promotion => false
items.push :name => '雪碧', :unit => '瓶', :price => 3.00, :promotion => false
items.push :name => '苹果', :unit => '斤', :price => 5.50, :promotion => false
items.push :name => '荔枝', :unit => '斤', :price => 15.00, :promotion => false
items.push :name => '电池', :unit => '个', :price => 2.00, :promotion => false
items.push :name => '方便面', :unit => '袋', :price => 4.50, :promotion => false

items.each do |item|
puts Product.create(item).to_json
end

User.delete_all

puts User.create(:username => 'admin', :password => Digest::SHA1.hexdigest('admin'), :is_admin => true).to_json
