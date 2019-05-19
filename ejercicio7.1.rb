inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras":6}

def add_product
    inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras":6}
    puts 'Ingrese producto que desea incluir junto con su stock (producto,stock): '
    producto = (gets.chomp.to_s).split(',')
    inventario[producto[0].to_sym] = producto[-1].to_i
    puts inventario
end

def delete_item
    inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras":6}
    puts 'Ingrese el item que desee eliminar: '
    delelte_item = gets.chomp.to_s.capitalize
    if delelte_item == "Notebooks"
        inventario.delete"Notebooks"
        puts 'Notebooks fue eliminado del inventario'
    elsif delelte_item == "PC Escritorio"
        inventario.delete"PC Escritorio"
        puts 'PC Escritorio fue eliminado del inventario'
    elsif delelte_item == "Routers"
        inventario.delete"Routers"
        puts 'Routers fue eliminado del inventario'
    elsif delelte_item == "Impresoras"
        inventario.delete"Impresoras"
        puts 'Impresoras fue eliminado del inventario'
    else 
        puts 'Ese producto no existe en el inventario'
    end
end

def stock_total
    inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras":6}
    sum = 0
    inventario.each {|k,v| sum += v}
    puts "El total de productos en el inventario es de #{sum} productos"
    print inventario
end

def actualizar
    inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras":6}
    puts 'Ingrese nuevo item o actualice los ya existentes: '
    act = (gets.chomp.to_s).split(',')
    inventario[act[0].to_sym] = act[-1].to_i
    print inventario
end

def max_value
    inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras":6}
    inventario.each {|k, v| puts "#{k} es el producto de mayor valor" if v == inventario.values.max}
end

def include?
    inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras":6}
    puts 'Consulte si el producto que busca se encuentra en stock: '
    prod = gets.chomp.to_s.capitalize
    if inventario.has_key?(prod.to_sym) == true
        puts 'Si se encuetra en tienda'
    elsif inventario.has_key?(prod.to_sym) == false
        puts 'No se encuentra en tienda'
    else
        puts 'Parece que no escribiste bien el producto'
    end
end


num = 0
while num != 7
    puts 'Ingrese una opción del menú: '
    puts '1) Agregar producto y stock (producto,stock)'
    puts '2) Eliminar un producto'
    puts '3) Actualizar información de stock'
    puts '4) Stock total de tienda'
    puts '5) Producto con mayor stock'
    puts '6) Existencia de algún producto'
    puts '7) Para salir'
    num = gets.chomp.to_i
    case num
    when 1
        add_product
    when 2
        delete_item
    when 3
        actualizar
    when 4
        stock_total
    when 5
        max_value
    when 6
        include?
    when 7
        puts 'Haz abandonado el programa'
    else
        puts 'Ingrese una opción válida'
    end
end