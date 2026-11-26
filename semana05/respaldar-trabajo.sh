#!/bin/bash
# respaldar-trabajo.sh - Respalda los archivos modificados en los ultimos N dias
# Autor: Nicol Duran
# Fecha: 2026-11-26
# Uso: ./respaldar-trabajo.sh [dias] (por omision, 7 dias)
# Descripcion: empaqueta en respaldos/ los archivos recientes de esta carpeta,
#              excluyendo temporales y los respaldos anteriores.

set -euo pipefail

# Directorio del proyecto semana05 (funciona tanto local como instalado en ~/bin)
SCRIPT_DIR="$HOME/terminal-lab/semana05"
DIAS="${1:-7}"
DEST="$SCRIPT_DIR/respaldos"
mkdir -p "$DEST"
NOMBRE="respaldo-$(date +%F).tar.gz"
RUTA="$DEST/$NOMBRE"

# Busca los archivos recientes y se los entrega a tar por la entrada estandar
cd "$SCRIPT_DIR"
find . -type f -mtime -${DIAS} \
  ! -name "*.tmp" ! -name "*~" ! -path "./respaldos/*" -print0 \
  | tar --null -czf "$RUTA" --files-from=-

# Informe
CUENTA=$(tar -tzf "$RUTA" | wc -l)
TAM=$(du -h "$RUTA" | cut -f1)
echo "Dias considerados: $DIAS"
echo "Archivos respaldados: $CUENTA"
echo "Tamano del paquete: $TAM"
echo "Paquete: $RUTA"
