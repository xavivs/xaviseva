-- ============================================
-- SETUP DE TABLA DE COMENTARIOS PARA SUPABASE
-- ============================================
-- Copia y pega todo este código en Supabase SQL Editor
-- y haz clic en "Run"

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

-- ============================================
-- ¡Listo! La tabla está configurada correctamente
-- ============================================
