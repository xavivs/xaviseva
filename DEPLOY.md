# 🚀 Guía de Despliegue - Contador de Días

Guía para subir tu contador a un dominio propio.

## Opción 1: Netlify (Recomendado - Más fácil y GRATIS) ⭐

### Pasos:

1. **Crear cuenta en Netlify**
   - Ve a [netlify.com](https://www.netlify.com)
   - Regístrate con GitHub, Google o email

2. **Subir tu sitio**
   - Arrastra y suelta la carpeta `04-Xavi_se_va` en [app.netlify.com/drop](https://app.netlify.com/drop)
   - O haz clic en "Add new site" → "Deploy manually" → selecciona la carpeta
   - ¡Listo! Obtendrás una URL tipo: `tu-sitio-123.netlify.app`

3. **Conectar tu dominio de GoDaddy**
   - En Netlify: Site settings → Domain management → Add custom domain
   - Ingresa tu dominio (ej: `xaviseva.com`)
   - Netlify te dará instrucciones para configurar DNS en GoDaddy
   - En GoDaddy: Ve a DNS Management y añade los registros que Netlify te indique
   - Espera 5-30 minutos para que se propague

**Ventajas:**
- ✅ Gratis
- ✅ HTTPS automático
- ✅ Muy fácil de usar
- ✅ Actualizaciones instantáneas (solo arrastra la carpeta de nuevo)

---

## Opción 2: Vercel (Alternativa fácil y GRATIS)

### Pasos:

1. **Crear cuenta en Vercel**
   - Ve a [vercel.com](https://vercel.com)
   - Regístrate con GitHub (recomendado) o email

2. **Subir tu sitio**
   - Arrastra la carpeta `04-Xavi_se_va` en la página principal
   - O instala Vercel CLI y ejecuta: `vercel` en la carpeta
   - Obtendrás una URL tipo: `tu-sitio-123.vercel.app`

3. **Conectar tu dominio**
   - En Vercel: Project Settings → Domains → Add Domain
   - Ingresa tu dominio
   - Configura los DNS en GoDaddy según las instrucciones

**Ventajas:**
- ✅ Gratis
- ✅ HTTPS automático
- ✅ Muy rápido

---

## Opción 3: GitHub Pages (GRATIS, requiere GitHub)

### Pasos:

1. **Crear repositorio en GitHub**
   - Ve a [github.com](https://github.com) y crea un nuevo repositorio
   - Sube los archivos de `04-Xavi_se_va`

2. **Activar GitHub Pages**
   - Ve a Settings → Pages
   - Source: selecciona "main" branch
   - Guarda

3. **Conectar dominio**
   - En Settings → Pages → Custom domain
   - Ingresa tu dominio
   - Configura DNS en GoDaddy según las instrucciones

**Ventajas:**
- ✅ Gratis
- ✅ Control de versiones con Git
- ✅ HTTPS automático

---

## Opción 4: Hosting de GoDaddy (Si ya tienes hosting)

### Pasos:

1. **Acceder al panel de GoDaddy**
   - Ve a tu cuenta de GoDaddy
   - Accede al File Manager o cPanel

2. **Subir archivos**
   - Ve a la carpeta `public_html` o `www`
   - Sube todos los archivos de `04-Xavi_se_va`
   - Asegúrate de que `index.html` esté en la raíz

3. **Configurar dominio**
   - Si compraste el dominio con hosting, ya debería estar configurado
   - Si solo compraste el dominio, apunta los DNS al hosting

**Nota:** Esta opción puede requerir más configuración técnica.

---

## 📋 Configuración DNS en GoDaddy

Cuando uses Netlify/Vercel/GitHub Pages, necesitarás configurar DNS:

1. Ve a tu cuenta de GoDaddy
2. Domain → Manage DNS
3. Añade estos registros (los valores exactos te los dará el servicio):
   - **Tipo A:** `@` → IP que te den
   - **Tipo CNAME:** `www` → dominio que te den (ej: `tu-sitio.netlify.app`)

---

## ⚠️ Nota Importante sobre Comentarios

Los comentarios se guardan en `localStorage` del navegador, lo que significa:
- ✅ Funcionan sin servidor
- ❌ Cada visitante ve solo sus propios comentarios
- ❌ No se comparten entre dispositivos/personas

Si quieres que los comentarios se compartan entre todos los visitantes, necesitarías:
- Una base de datos (Firebase, Supabase, etc.)
- Un backend (Node.js, Python, etc.)

Pero para uso personal/familiar, el sistema actual funciona perfectamente.

---

## 🎯 Recomendación Final

**Para la mayoría de casos:** Usa **Netlify** (Opción 1)
- Es la más fácil
- Gratis
- Solo arrastra la carpeta y listo
- Conecta tu dominio en minutos

¿Necesitas ayuda con algún paso específico? ¡Dímelo!
