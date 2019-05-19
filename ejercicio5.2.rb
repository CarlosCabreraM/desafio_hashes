balances = {"Enero"=>2000, "Febrero"=>3000, "Marzo"=>1000, "Abril"=>5000, "Mayo"=>4000}

balances_venta_mes = balances.invert
# print balances_venta_mes

# print balances_venta_mes.keys.max
print balances_venta_mes[balances_venta_mes.keys.max]
