#include <stdio.h>
#include <string.h>
#include <time.h>

int validar_usuario(const char *usuario, const char *clave) {
    FILE *archivo = fopen("usuarios.txt", "r");
    if (!archivo) {
        printf("Error al abrir el archivo de usuarios.\n");
        return 0;
    }

    char linea[100], user[50], pass[50];
    int validado = 0;

    while (fgets(linea, sizeof(linea), archivo)) {
        sscanf(linea, "%[^:]:%s", user, pass);  // Divide en usuario y clave
        if (strcmp(usuario, user) == 0 && strcmp(clave, pass) == 0) {
            validado = 1;
            break;
        }
    }

    fclose(archivo);
    return validado;
}

void guardar_bitacora(const char *usuario, const char *accion) {
    FILE *bitacora = fopen("bitacora.txt", "a");
    if (!bitacora) {
        printf("Error al abrir el archivo de bitácora.\n");
        return;
    }

    time_t t = time(NULL);
    struct tm *tm_info = localtime(&t);
    char fecha[20];
    strftime(fecha, sizeof(fecha), "%Y/%m/%d", tm_info);

    fprintf(bitacora, "%s: %s – %s\n", fecha, usuario, accion);
    fclose(bitacora);
}
