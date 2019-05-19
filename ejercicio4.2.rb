personas_hash = {:Carolina=>32, :Alejandro=>28, :"Maria Jesús"=>41, :Valentín=>19}

sum = 0
personas_hash.each_value do |edad|
    sum += edad
end
prom = sum / personas_hash.size.to_f
print prom
    