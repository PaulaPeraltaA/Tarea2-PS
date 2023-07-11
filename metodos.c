#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "estructuras.c"


// 1. Crear profesor

void registroProfesor(Profesor *profesor) {
    printf("\nRegistro de Profesor\n");
    printf("Nombre: ");
    scanf("%s", profesor->nombre);
    printf("Carrera: ");
    scanf("%s", profesor->carrera);
    printf("Cantidad de materias dictadas (2-3): ");
    scanf("%d", &profesor->cantidadMaterias);
    getchar(); 
    for (int i = 0; i < profesor->cantidadMaterias; i++) {
        printf("Materia %d:\n", i + 1);
        printf("Nombre: ");
        scanf("%s", profesor->materiasDictando[i].nombre);
        printf("Paralelo: ");
        scanf("%s", profesor->materiasDictando[i].paralelo);
        getchar(); 
    }
}

//2. Crear estudiante

void registroEstudiante(Estudiante *estudiante) {
    printf("\nRegistro de Estudiante\n");
    printf("Nombre: ");
    scanf("%s", estudiante->nombre);
    printf("Nivel: ");
    scanf("%d", &estudiante->nivel);
    printf("Carrera: ");
    scanf("%s", estudiante->carrera);
    printf("Cantidad de materias tomadas (3-7): ");
    scanf("%d", &estudiante->cantidadMaterias);
    getchar();
    for (int i = 0; i < estudiante->cantidadMaterias; i++) {
        printf("Materia %d:\n", i + 1);
        printf("Nombre: ");
        scanf("%s", estudiante->materiasTomando[i].nombreMateria);
        printf("Créditos: ");
        scanf("%d", &estudiante->materiasTomando[i].creditos);
        getchar();
    }
}

   

//3. Mostrar datos
    // Mostrar la información ingresada
void mostrarDatos(char opcion, void *personas, int cantidadPersonas){
   if (opcion == 'p') {
        Profesor *profesor = personas;
        printf("\nInformación del Profesor:\n");
        printf("Nombre: %s\n", profesor->nombre);
        printf("Carrera: %s\n", profesor->carrera);
        printf("Cantidad de materias dictadas: %d\n", profesor->cantidadMaterias);
        printf("Materias dictadas:\n");
        for (int i = 0; i < profesor->cantidadMaterias; i++) {
            printf("Materia %d:\n", i + 1);
            printf("Nombre: %s\n", profesor->materiasDictando[i].nombre);
            printf("Paralelo: %s\n", profesor->materiasDictando[i].paralelo);
        }
    } else if (opcion == 'e') {
        Estudiante *estudiante = personas;
        printf("\nInformación del Estudiante:\n");
        printf("Nombre: %s\n", estudiante->nombre);
        printf("Nivel: %d\n", estudiante->nivel);
        printf("Carrera: %s\n", estudiante->carrera);
        printf("Cantidad de materias tomadas: %d\n", estudiante->cantidadMaterias);
        printf("Materias tomadas:\n");
        for (int i = 0; i < estudiante->cantidadMaterias; i++) {
            printf("Materia %d:\n", i + 1);
            printf("Nombre: %s\n", estudiante->materiasTomando[i].nombreMateria);
            printf("Créditos: %d\n", estudiante->materiasTomando[i].creditos);
        }
    } else {
        Profesor *profesor = personas;
        Estudiante *estudiante = personas + sizeof(Profesor);
        printf("\nInformación del Profesor:\n");
        printf("Nombre: %s\n", profesor->nombre);
        printf("Carrera: %s\n", profesor->carrera);
        printf("Cantidad de materias dictadas: %d\n", profesor->cantidadMaterias);
        printf("Materias dictadas:\n");
        for (int i = 0; i < profesor->cantidadMaterias; i++) {
            printf("Materia %d:\n", i + 1);
            printf("Nombre: %s\n", profesor->materiasDictando[i].nombre);
            printf("Paralelo: %s\n", profesor->materiasDictando[i].paralelo);
        }
        for (int i = 0; i < cantidadPersonas - 1; i++) {
            estudiante = personas + sizeof(Profesor) + (i * sizeof(Estudiante));
            printf("\nInformación del Estudiante %d:\n", i + 1);
            printf("Nombre: %s\n", estudiante->nombre);
            printf("Nivel: %d\n", estudiante->nivel);
            printf("Carrera: %s\n", estudiante->carrera);
            printf("Cantidad de materias tomadas: %d\n", estudiante->cantidadMaterias);
            printf("Materias tomadas:\n");
            for (int j = 0; j < estudiante->cantidadMaterias; j++) {
                printf("Materia %d:\n", j + 1);
                printf("Nombre: %s\n", estudiante->materiasTomando[j].nombreMateria);
                printf("Créditos: %d\n", estudiante->materiasTomando[j].creditos);
            }
        }
    }
  
}

//4. Eliminar materia
void eliminarMateriaEstudiante(Estudiante* estudiante, char* nombreMateria) {
    int i, j;
    int indiceMateria = -1;
    
    // Buscar el índice de la materia a eliminar
    for (i = 0; i < estudiante->cantidadMaterias; i++) {
        if (strcmp(estudiante->materiasTomando[i].nombreMateria, nombreMateria) == 0) {
            indiceMateria = i;
            break;
        }
    }
    
    // Si se encontró la materia, eliminarla y ajustar las demás materias
    if (indiceMateria != -1) {
        // Desplazar las materias siguientes hacia atrás
        for (j = indiceMateria; j < estudiante->cantidadMaterias - 1; j++) {
            strcpy(estudiante->materiasTomando[j].nombreMateria, estudiante->materiasTomando[j + 1].nombreMateria);
            estudiante->materiasTomando[j].creditos = estudiante->materiasTomando[j + 1].creditos;
        }
        
        // Actualizar la cantidad de materias
        estudiante->cantidadMaterias--;
        
        printf("Materia eliminada con éxito.\n");
    } else {
        printf("La materia no se encontró en la lista del estudiante.\n");
    }
}

void eliminarMateriaProfesor(Profesor* profesor, const char* nombreMateria) {
    int i, j;
    int indiceMateria = -1;
    
    // Buscar el índice de la materia a eliminar
    for (i = 0; i < profesor->cantidadMaterias; i++) {
        if (strcmp(profesor->materiasDictando[i].nombre, nombreMateria) == 0) {
            indiceMateria = i;
            break;
        }
    }
    
    // Si se encontró la materia, eliminarla y ajustar las demás materias
    if (indiceMateria != -1) {
        // Desplazar las materias siguientes hacia atrás
        for (j = indiceMateria; j < profesor->cantidadMaterias - 1; j++) {
            strcpy(profesor->materiasDictando[j].nombre, profesor->materiasDictando[j + 1].nombre);
            strcpy(profesor->materiasDictando[j].paralelo, profesor->materiasDictando[j + 1].paralelo);
        }
        
        // Actualizar la cantidad de materias
        profesor->cantidadMaterias--;
        
        printf("Materia eliminada con éxito.\n");
    } else {
        printf("La materia no se encontró en la lista del profesor.\n");
    }
}


//5. Cambiar nivel 
void cambiarNivel(Estudiante* estudiante, int nuevoNivel) {
    estudiante->nivel = nuevoNivel;
    printf("Nivel cambiado exitosamente.\n");
}