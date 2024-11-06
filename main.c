#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "datos.h"
#include "calculos.h"
#include "verifi.h"

int main() {
    char usuario[50], clave[50];
    int intentos = 3, figura;

    // Solicitar usuario y clave
    while (intentos > 0) {
        printf("Ingrese usuario: ");
        scanf("%s", usuario);
        printf("Ingrese clave: ");
        scanf("%s", clave);

        if (validar_usuario(usuario, clave)) {
            printf("Ingreso exitoso al sistema.\n");
            guardar_bitacora(usuario, "Ingreso exitoso al sistema");
            break;
        } else {
            printf("Usuario o clave incorrectos.\n");
            guardar_bitacora(usuario, "Ingreso fallido usuario/clave erróneo");
            intentos--;
        }
    }

    if (intentos == 0) {
        printf("Demasiados intentos fallidos. Saliendo...\n");
        return 1;
    }

    // Ciclo principal del programa para selección de figuras
    do {
        mostrarMenu();
        printf("Ingrese una opción: ");
        scanf("%d", &figura);

        switch (figura) {
            case 1 ... 13:
                guardar_bitacora(usuario, "Figura seleccionada");
                solicitarDatosFigura(figura);
                break;
            case 0:
                printf("Saliendo del programa.\n");
                guardar_bitacora(usuario, "Salida del sistema");
                break;
            default:
                printf("Opción no válida. Intente de nuevo.\n");
                break;
        }

        if (figura != 0) {
            char respuesta;
            do {
                printf("¿Desea realizar el análisis de otra figura geométrica? (s/n): ");
                scanf(" %c", &respuesta);
                respuesta = tolower(respuesta);  // Convertir a minúscula

                if (respuesta == 'n') {
                    figura = 0;  // Salir del bucle
                    guardar_bitacora(usuario, "Salida del sistema");
                } else if (respuesta == 's') {
                    break;  // Continuar con otro análisis
                } else {
                    printf("Respuesta no válida. Por favor, ingrese 's' para sí o 'n' para no.\n");
                }
            } while (respuesta != 's' && respuesta != 'n');
        }

    } while (figura != 0);

    return 0;
}

