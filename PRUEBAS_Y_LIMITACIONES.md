# Pruebas y limitaciones · INEM Convive 0.2.2

## Verificaciones estructurales

- Se verifica que existan 30 casos: 10 por perfil.
- Se verifica un solo camino recomendado por caso y fuente documental asociada.
- Se comprueban 30 rutas finales y 34 nodos en JSON v2, con destinos válidos y sin ciclos.
- Se verifica que el repositorio no contenga el PDF institucional ni otros archivos sensibles por error.
- Se comprueba sintaxis de JavaScript con `node --check`.

## Pendientes no declarados como superados

- Prueba humana de usabilidad en teléfono físico y con tecnologías de asistencia.
- Aprobación institucional y jurídica para publicación.
- Prueba real de importación JSON en el constructor visual.
- Validación editorial de las 30 referencias normativas.
- Confirmación de que el selector de PDF y `#page=N` funciona con el visor usado por cada navegador.

## Navegador automatizado en este entorno

Se intentó abrir la variante 0.2.2 con Playwright + Chromium en el entorno de ejecución. El navegador devolvió `net::ERR_BLOCKED_BY_ADMINISTRATOR` para `file://`. Esta prueba no pasó ni se considera validación funcional. Se conserva la confirmación del usuario únicamente para la versión local anterior 0.2.1.
