# backup-logs-ocp
Backup por 10 días de los logs de OCP


# Retorna todos los archivo en donde se encuentra el texto buscado

Ejemplo
> cd cancel-dispatch
> grep -Ril "D-20-02-034850" | sort

# Es similar a la busqueda anterior, pero me quedo con el ultimo archivo

Ejemplo
> cd cancel-dispatch
> grep -Ril "D-20-02-034850" | sort -r | head -1

# Obtiene las ocurrencias en el ultimo archivo

Ejemplo
> cd cancel-dispatch
> txt="8335536";cat < $(grep -Ril $txt | sort -r | head -1) | grep -n $txt

* Si se obtiene el siguiente error -> "-bash: $(grep -Ril $txt | sort -r | head -1): ambiguous redirect" significa que no existen resultados

# Ejecutar

> nohup ./run.sh &