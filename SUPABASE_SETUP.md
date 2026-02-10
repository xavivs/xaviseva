# 🔧 Configuración de Supabase para Comentarios

Guía para configurar Supabase y que los comentarios se guarden y compartan entre todos los visitantes.

## Paso 1: Crear la tabla en Supabase

1. Ve a tu proyecto en [supabase.com](https://supabase.com)
2. Ve a **SQL Editor** (en el menú lateral)
3. Ejecuta este SQL para crear la tabla:

```sql
-- Crear tabla de comentarios
CREATE TABLE IF NOT EXISTS comments (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  text TEXT NOT NULL,
  name TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Habilitar Row Level Security (RLS)
ALTER TABLE comments ENABLE ROW LEVEL SECURITY;

-- Eliminar políticas existentes si existen (para evitar errores)
DROP POLICY IF EXISTS "Anyone can read comments" ON comments;
DROP POLICY IF EXISTS "Anyone can insert comments" ON comments;

-- Política: Permitir lectura a todos (cualquiera puede ver comentarios)
CREATE POLICY "Anyone can read comments"
  ON comments
  FOR SELECT
  USING (true);

-- Política: Permitir inserción a todos (cualquiera puede añadir comentarios)
CREATE POLICY "Anyone can insert comments"
  ON comments
  FOR INSERT
  WITH CHECK (true);
```

4. Haz clic en **Run** para ejecutar el SQL

## Paso 2: Obtener tus credenciales

1. En tu proyecto de Supabase, ve a **Settings** → **API**
2. Copia estos valores:
   - **Project URL** (ejemplo: `https://xxxxx.supabase.co`)
   - **anon public** key (la clave pública)

## Paso 3: Configurar en el código

1. Abre el archivo `index.html`
2. Busca estas líneas (alrededor de la línea 260):

```javascript
const SUPABASE_URL = 'TU_SUPABASE_URL';
const SUPABASE_ANON_KEY = 'TU_SUPABASE_ANON_KEY';
```

3. Reemplaza con tus credenciales:

```javascript
const SUPABASE_URL = 'TU_SUPABASE_URL'; // Tu Project URL
const SUPABASE_ANON_KEY = 'TU_SUPABASE_ANON_KEY'; // Tu anon public key
```

## Paso 4: Probar

1. Recarga la página
2. Deja un comentario
3. Abre la página en otra pestaña o navegador
4. Deberías ver el comentario que acabas de dejar

## ✅ Listo

Ahora los comentarios se guardan en Supabase y todos los visitantes pueden verlos y añadir nuevos.

## 🔒 Seguridad

- Los comentarios son públicos (cualquiera puede leer y escribir)
- Si quieres añadir moderación o autenticación, puedes modificar las políticas RLS en Supabase
- Los comentarios se actualizan automáticamente cada 5 segundos

## 🐛 Troubleshooting

Si los comentarios no se guardan:
1. Verifica que las credenciales estén correctas
2. Abre la consola del navegador (F12) y revisa si hay errores
3. Verifica que la tabla `comments` exista en Supabase
4. Verifica que las políticas RLS estén activas
