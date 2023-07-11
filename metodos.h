#ifndef _METODOS
#define _METODOS


void registroProfesor(Profesor *profesor);
void registroEstudiante(Estudiante *estudiante);

void mostrarDatos(char opcion, void *personas, int cantidadPersonas);
void eliminarMateriaEstudiante(Estudiante* estudiante, char* nombreMateria);
void eliminarMateriaProfesor(Profesor* profesor, const char* nombreMateria);
void cambiarNivel(Estudiante* estudiante, int nuevoNivel);

#endif