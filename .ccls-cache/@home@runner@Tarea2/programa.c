#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "estructuras.h"



// Func
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

    // Validar el número de personas que se ingresan
int main(int argc, char *argv[]) {
      int opt;
    int cantidadPersonas;
    char opcion;

    if (argc > 1) {
        cantidadPersonas = atoi(argv[1]);
        if (cantidadPersonas < 2 || ! *argv[1]) {
            printf("La cantidad de personas a registrar debe ser mayor o igual a 2 y numérica.\n");
            return 1;
        }
    } else {
        printf("Ingrese la cantidad de personas a registrar (mayor o igual a 2): ");
        scanf("%d", &cantidadPersonas);
        if (cantidadPersonas < 2) {
            printf("La cantidad de personas a registrar debe ser mayor o igual a 2.\n");
            return 1;
        }
    }
    // Verificar la opción de registro
    while ((opt = getopt(argc, argv, ":pea")) != -1) {
        switch (opt) {
            case 'p':
                opcion = (char) opt;
                break;
            case 'e':
                printf("Opción: %c\n", opt);
                opcion = (char) opt;
                break;
            case 'a':
                printf("Opción: %c\n", opt);
                opcion = (char) opt;
                break;
            case ':':
                printf("Opción: %c  Falta argumento\n", optopt);
                break;
            case '?':
                printf("Opción no reconocida: %c\n", optopt);
                break;
        }
    }
    for (; optind < argc; optind++) {
        printf("Argumentos sobrantes: %s\n", argv[optind]);
    }

  // Crear arreglo de estructuras dinámicamente
    void *personas;
    if (opcion == 'p') {
        personas = malloc(cantidadPersonas * sizeof(Profesor));
    } if (opcion == 'e') {
        personas = malloc(cantidadPersonas * sizeof(Estudiante));
    } else {
        personas = malloc(cantidadPersonas * sizeof(Profesor) + (cantidadPersonas - 1) * sizeof(Estudiante));
    }

    // Registro de personas
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

  
    // Mostrar la información ingresada
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
  
    // Liberar la memoria asignada
    free(personas);

    return 0;

  
}