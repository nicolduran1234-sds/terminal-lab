#!/bin/bash
# explorar-sistema.sh - Recorre la jerarquia del sistema y la documenta
# Autor: Nicky
# Fecha: 2026-11-24
# Uso: ./explorar-sistema.sh
# Descripcion: recorre /etc, /var, /home, /bin, /tmp y /proc y documenta su funcion

SEP="--------------------------------------------------"

# Exploracion de /etc (configuracion)
echo "=== /etc ==="
echo "/etc guarda archivos de configuracion del sistema en texto plano."
ls -l /etc | head -n 20
echo "$SEP"
echo ""

# Exploracion de /var (datos variables)
echo "=== /var ==="
echo "/var guarda datos que cambian: registros, colas y caches."
ls -lh /var | head -n 20
echo "$SEP"
echo ""

# Exploracion de /home (archivos de usuarios)
echo "=== /home ==="
echo "/home contiene un subdirectorio por usuario con sus archivos personales."
ls -l /home
echo "$SEP"
echo ""

# Exploracion de /bin (programas esenciales)
echo "=== /bin ==="
echo "/bin contiene programas esenciales disponibles para todo usuario."
ls -l /bin | head -n 20
echo "$SEP"
echo ""

# Exploracion de /tmp (archivos temporales)
echo "=== /tmp ==="
echo "/tmp contiene archivos temporales que se vacian al reiniciar."
ls -lh /tmp | head -n 20
echo "$SEP"
echo ""

# Exploracion de /proc (sistema virtual del kernel)
echo "=== /proc ==="
echo "/proc es un sistema virtual: el kernel genera su contenido al leerlo."
ls -l /proc | head -n 20
echo "$SEP"
echo ""

echo "Exploracion completada."
