restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

# menu_descuento = restaurant_menu.map do |k,v|
#     if k.split.size > 1
#         [k,(v - v*0.2)]
#     else
#         [k,v]
#     end
# end.to_h



menu_descuento = restaurant_menu.map {|k,v| k.split.size > 1 ? [k,(v - v*0.2)] : [k,v]}.to_h
   
print menu_descuento