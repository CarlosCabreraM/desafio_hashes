restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

menu_iva = restaurant_menu.map {|k,v|[k,(v * 1.19)]}.to_h

print menu_iva
