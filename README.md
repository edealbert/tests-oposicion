# Tests del Temario

Web para practicar tests de oposición. Ahora mismo incluye la oposición de **Benicàssim · Auxiliar Administrativo**, con 1.144 preguntas de 9 temas.

## Archivos

| Archivo | Qué es |
|---|---|
| `index.html` | La web |
| `banco.json` | Temas y preguntas |
| `config.js` | Configuración de la sincronización (opcional) |
| `supabase.sql` | Crea la tabla en Supabase (solo si usas la sincronización) |

## 1. Publicarla en GitHub Pages (gratis)

1. Crea una cuenta en https://github.com (gratis).
2. Arriba a la derecha, pulsa **+** y luego **New repository**.
   - Repository name: `tests-oposicion`
   - Marca **Public**. GitHub Pages es gratis solo para repositorios públicos.
   - Pulsa **Create repository**.
3. En la página del repositorio, pulsa **uploading an existing file**. Arrastra `index.html`, `banco.json`, `config.js`, `supabase.sql` y `README.md`, y pulsa **Commit changes**.
4. Ve a **Settings** y luego a **Pages**. En *Build and deployment*, elige *Source*: **Deploy from a branch**, *Branch*: **main** y la carpeta **/ (root)**. Pulsa **Save**.
5. Espera uno o dos minutos y recarga esa página. Aparecerá la dirección de la web, del tipo `https://TU-USUARIO.github.io/tests-oposicion/`.

En el móvil, abre esa dirección y usa **Añadir a pantalla de inicio**. Así queda como una app.

Sin hacer nada más, la web ya funciona. Las notas, las falladas y el historial se guardan en cada dispositivo por separado.

## 2. Compartir el progreso entre el móvil y el ordenador (opcional, gratis)

1. Crea una cuenta en https://supabase.com (puedes entrar con la cuenta de GitHub).
2. Pulsa **New project**. Ponle un nombre, una contraseña (guárdala) y la región *West EU* o *Central EU*. Elige el plan **Free**.
3. Cuando el proyecto esté listo, abre **SQL Editor** y luego **New query**. Pega el contenido de `supabase.sql` y pulsa **Run**.
4. Ve a **Project Settings** y luego a **API**. Copia:
   - **Project URL** (`https://xxxx.supabase.co`)
   - La clave **anon public**
5. En GitHub, abre `config.js`, pulsa el lápiz (*Edit*), pega los dos valores entre las comillas y pulsa **Commit changes**.

Abajo de la web verás «Progreso sincronizado entre dispositivos» con un punto verde.

Ten en cuenta dos cosas:

- **Pausa por inactividad:** Supabase pausa los proyectos gratuitos que llevan una semana sin uso. Si pasa, la web sigue funcionando en cada dispositivo. Para reactivar la sincronización, entra en supabase.com y pulsa **Restore project**.
- **Acceso al progreso:** quien tenga la dirección de la web podría leer o cambiar el progreso guardado, que solo son notas y estadísticas. No guardes ahí nada privado.

## Añadir temas o preguntas

Se cambia el archivo `banco.json`. Para actualizarlo, en GitHub pulsa **Add file**, luego **Upload files**, sube el nuevo `banco.json` y pulsa **Commit changes**. El progreso no se pierde, porque cada pregunta tiene un identificador fijo.
