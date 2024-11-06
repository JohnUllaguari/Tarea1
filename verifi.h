#ifndef AUTH_H
#define AUTH_H

int validar_usuario(const char *usuario, const char *clave);
void guardar_bitacora(const char *usuario, const char *accion);

#endif
