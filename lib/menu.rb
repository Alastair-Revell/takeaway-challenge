require_relative "order"
require_relative "view"

class Menu
include Print

  @@price_list = {"Tortilla Pie"=>7.566291660297953, "Crock Pot Italian Roast Beef"=>15.870444925331856,
    "Grilled Cheese Sandwiches"=>9.475718855348292, "Southwestern Cheese Panini "=>10.001905754847252,
    "Pepper Steak"=>6.858531212635822, "Shrimp Tacos"=>5.61083624352547, "Berry Topped Waffles"=>11.997324267597493,
    "Clam Sauce & Linguine "=>14.792410523212855, "Scrambled Eggs"=>5.419621658304926,
    "Grilled Burgers"=>8.286665891375986, "Black Bean Salad"=>5.414688749501629, "Beef Enchiladas"=>6.480124021483236,
    "Veggie Lasagna"=>1.1119178802983174, "Crock Pot Pulled Pork"=>10.379359795795445, "Pan fried Tilapia"=>9.840036828756226,
    "Red Beans & Rice"=>1.4979068795155634, "Cajun Chicken Wraps"=>10.15249849524407, "Baked Ham"=>12.224155215123146,
    "Homemade Chicken Strips"=>2.024990042900324, "Sweet Chicky Nuggets "=>14.589997849837438,
    "Beefy Spanish Rice "=>2.7263040953533997, "Meatloaf"=>6.788031942585693, "Jerk Flavored Pork Tenderloin"=>10.247049185310997,
    "Black Bean Soup"=>8.264136274554632, "Roast Chicken"=>4.441032274556786, "Reubens"=>1.2713672557973252,
    "Candied Chicken"=>8.83959634461103, "Jambalaya"=>3.982428249654641, "Spicy Black Eyed Pea Soup"=>6.3816628623962295, "Grilled Chicken Salad"=>1.8366531025492263}

  def view_menu
    n = 1
    @@price_list.each do |dish , price|
      puts n.to_s + "." + " " + dish + "......" + "£" + sprintf('%.2f', price)
      n += 1
    end
  end

  #enter array: [[dish1,quantity1],[dish2,quantity2]]
  def select(numbers_quantities, order_number)
    numbers_quantities.each do |n,q|
    q.times { order_number.order << [@@price_list.keys[n-1], @@price_list.values[n-1]] }
    end
    return order_number
  end

end

menu = Menu.new
order = Order.new
menu.select([[1,2]],order)
order.view
order.view_order
