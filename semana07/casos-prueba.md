# Casos de prueba de validador.sh

| Caso | Entrada | Codigo esperado |
|---|---|---|
| Sin argumentos | (ninguno) | 2 |
| Ruta inexistente | ./no-existe | 1 |
| Directorio | ./datos/mi-dir | 0 |
| Archivo regular | ./datos/archivo.txt | 0 |
| Archivo vacio | ./datos/vacio.txt | 0 |
| Sin permiso | ./datos/sin-lectura.txt | 3 |
| Tipo desconocido | /dev/null | 4 |

Nota: si se ejecuta como root o en Windows con Git Bash, "Sin permiso" devuelve 0 en vez de 3, porque los permisos se emulan.
