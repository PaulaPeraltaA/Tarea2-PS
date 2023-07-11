#!/bin/bash

# Verificar que se ingresen los argumentos requeridos
if [ $# -ne 5 ]; then
    echo "Uso: $0 <ubicación origen> <ubicación nueva> <usuario> <grupo> <permisos>"
    exit 1
fi

# Obtener los argumentos
ubicacion_origen="$1"
ubicacion_nueva="$2"
usuario="$3"
grupo="$4"
permisos="$5"

# Copiar los archivos de la ubicación origen a la ubicación nueva
cp -r "$ubicacion_origen" "$ubicacion_nueva"

# Cambiar los permisos de los archivos en la ubicación nueva
chmod -R "$permisos" "$ubicacion_nueva"

# Cambiar el propietario y grupo de los archivos en la ubicación nueva
chown -R "$usuario:$grupo" "$ubicacion_nueva"

echo "Archivos copiados y permisos cambiados exitosamente."