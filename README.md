# INEM Convive · Candidata pública 0.2.2

Aplicación educativa estática para explorar el Manual de Convivencia de la IEDT INEM Simón Bolívar mediante **30 situaciones ficticias**, 10 para estudiantes, 10 para familias y 10 para docentes. Desarrollo educativo de **Arias Data Lab (ADL) · 2026**.

## ¿Qué incluye?

- `index.html`: experiencia con preguntas de opción múltiple, retroalimentación formativa, iconografía temática y referencias normativas.
- `assets/escudo-inem.png`: escudo institucional proporcionado para este piloto. Identidad institucional, sin licencia de marca ni permiso de reutilización general implícito.
- `material_editable/INEM_Convive_Arbol_JSON_v2.json`: proyecto editable compatible estructuralmente con el formato de árbol v2 del constructor de chatbots. La importación en la interfaz original todavía debe comprobarse.
- `fuentes/README.md`: procedencia del contenido y límites de redistribución. **No incluye el PDF institucional.**

## Funcionamiento

Abre `index.html` en un navegador moderno o sirve esta carpeta como sitio estático. Las rutas y actividades funcionan sin conexión a Internet. No hay backend, telemetría ni recolección de respuestas.

Para abrir las páginas citadas, selecciona en la página una copia local del Manual de Convivencia en PDF. El PDF permanece en el dispositivo y se usa durante la sesión, sin subirlo a ningún servidor.

## Preparación para GitHub Pages

1. Revisar con el INEM la autorización de uso público de su escudo y las referencias a su Manual de Convivencia.
2. Verificar que el repositorio no contenga PDF institucional, información personal ni credenciales.
3. Comprobar el proyecto con un navegador real en PC y teléfono.
4. Cuando se autorice la publicación, subir a un repositorio público `ljarias/inem-convive`.
5. Configurar GitHub Pages desde `Settings > Pages > Build and deployment > Deploy from a branch`, seleccionando `main` y `/ (root)`.

La ruta pública esperada, **solo después de la publicación**, sería `https://ljarias.github.io/inem-convive/`.

## Seguridad y uso responsable

No es un canal de denuncias, no procesa expedientes ni datos de estudiantes, no clasifica disciplinariamente hechos reales ni automatiza sanciones. Para situaciones de riesgo se deben utilizar los canales competentes. Los escenarios son ficticios.

## Condiciones de uso

Repositorio público no equivale automáticamente a software de código abierto. **No se ha asignado licencia al código de esta aplicación** hasta decisión del titular. El escudo y el contenido institucional poseen condiciones de uso independientes. No se aplica automáticamente la licencia Apache 2.0 del constructor original a todos los activos de este proyecto.

## Estado

Versión 0.2.2, **candidata a publicación**. Requiere revisión institucional y verificación final antes de despliegue.


## Despliegue por GitHub Pages

Publicación desde `main` y `/ (root)` (sin servidor ni herramientas de compilación).
La etiqueta `inem-convive-version` en la cabecera HTML permite comprobar que GitHub Pages sirvió exactamente esta entrega pública 0.2.2.

### Cuidados de publicación

- No subir el Manual de Convivencia en PDF, respaldos de instalaciones locales, archivos `.env` ni información estudiantil.
- El escudo se incluye únicamente como identidad del piloto institucional; no supone una licencia sobre esa marca.
- No hay licencia abierta asignada al código hasta decisión expresa del titular.
- Los casos y sus referencias deben ser revisados por la institución antes de difusión como orientación oficial.
