
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "estructuras.c"
#include "metodos.c"

 // Registro de personas
 void registrarPersonas(char* opcion){
    if (opcion == 'p') {
       for (int cont = 0; cont < cantidadPersonas; cont++) {
         registroProfesor((Profesor *)personas);
       }
    }  if (opcion == 'e' ) {
        for (int cont = 0; cont < cantidadPersonas; cont++) {
          registroEstudiante((Estudiante *)personas);
        }       
    }  if (opcion == 'a'){
        registroProfesor((Profesor *)personas);
        for (int cont = 0; cont < (cantidadPersonas-1); cont++) {
           registroEstudiante((Estudiante *)personas);
        }  
    }
 }
