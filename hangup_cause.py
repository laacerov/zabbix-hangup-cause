# -*- coding: utf-8 -*-

import csv

# Obtén la fecha actual en el formato YYYY-MM-DD
import datetime
current_date = datetime.date.today().strftime("%Y-%d-%m")

# Construir el nombre del archivo de entrada usando la fecha actual
input_file = "/var/www/logs_capture/events_{}.csv".format(current_date)

# Verificar si el archivo existe
try:
    with open(input_file, 'r') as csvfile:
        call_counts = {}
        reader = csv.reader(csvfile, delimiter='|')

        # Leer el archivo CSV línea por línea
        for row in reader:
            # Obtener el código de llamada (campo 17)
            call_code = row[16]

            # Verificar si el código de llamada es 16 y el estado de llamada es 'Up'
            if call_code == "16" and row[4] == "Up":
                call_code = "16_Up"

            # Incrementar el contador para el código de llamada en el diccionario
            if call_code in call_counts:
                call_counts[call_code] += 1
            else:
                call_counts[call_code] = 1

        # Imprimir los resultados
        for key, value in call_counts.items():
            print("Código de Llamada {}: {} llamadas".format(key, value))

except IOError:
    print("El archivo de entrada {} no existe para la fecha actual.".format(input_file))
