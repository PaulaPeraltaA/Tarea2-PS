#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "estructuras.c"
#include "metodos.c"
#include "regDatos.c"


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

    //metodo registrar personas: Profesor y Estudiante
    registrarPersonas(opcion);

    //metodo mostrar Datos ingresados
    mostrarDatos(opcion, personas, cantidadPersonas);

      // Liberar la memoria asignada
    free(personas);

    return 0;

}
