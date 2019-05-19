restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

sum = 0
restaurant_menu.each do |producto, valor|
    sum += valor
end
prom = sum / restaurant_menu.size
puts "el promedio de costo es de #{prom}"
