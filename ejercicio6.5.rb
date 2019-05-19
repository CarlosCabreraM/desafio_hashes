restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

valores = []
restaurant_menu.each do |platillos,precios|
    valores.push(precios)
end
print valores