#define MAX_MATERIAS_DICTANDO 3
#define MAX_MATERIAS_TOMANDO 7

// Estructuras
typedef struct {
    char nombre[100];
    char carrera[100];
    struct {
        char nombre[100];
        char paralelo[10];
    } materiasDictando[MAX_MATERIAS_DICTANDO];
    int cantidadMaterias;
} Profesor;

typedef struct {
    char nombre[100];
    int nivel;
    char carrera[100];
    struct {
        char nombreMateria[100];
        int creditos;
    } materiasTomando[MAX_MATERIAS_TOMANDO];
    int cantidadMaterias;
} Estudiante;
