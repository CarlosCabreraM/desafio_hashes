productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche'=> 750}

arr_aux = []

productos.each do |producto, valor|
    arr_aux << producto
    arr_aux << valor
end

print arr_aux