personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

personas_hash = {}

personas.each_with_index do |ele,value|
    personas_hash[ele.to_sym] = edades[value]
end

print personas_hash