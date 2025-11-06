#!/bin/bash

#He puesto que si al poner un número, si al final del script poner el mensaje que contiene `f>
#Aunque es en caso de que siempre haya que poner finalizado al final.
contandovoy=$(echo -e "5\n" | ./06_while_counter.sh)

if [[ "$contandovoy" == *"finalizado"* ]]; then
        echo -e "[CONTAR]\tTEST OK"
else
        echo -e "[CONTAR]\tTEST FAILED"
        exit 1
fi

#Pone hola al valor contar y si te dice que no es un número , si te da un mensaje de diciendo>
#Esto no funcionaría si no te obligasen a poner un mensaje diciendo, que lo que pusiste no es>
contandovoy=$(echo -e "hola\n" | ./06_while_counter.sh)

if [[ "$contandovoy" == *"no es un número"* ]]; then
        echo -e "[NO_NUMÉRICO]\tTEST OK"
else
        echo -e "[NO_NUMÉRICO]\tTEST FAILED"
        exit 1
fi
