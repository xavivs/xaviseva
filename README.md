# Contador de Días - Xavi se va

Un contador regresivo interactivo que muestra cuántos días, horas, minutos y segundos quedan hasta tu fecha de salida. Incluye barra de progreso, sistema de comentarios y animaciones.

## 🚀 Cómo ejecutarlo en local

### Opción 1: Abrir directamente en el navegador (más simple)
1. Navega a la carpeta `04-Xavi_se_va`
2. Haz doble clic en `index.html`
3. Se abrirá automáticamente en tu navegador predeterminado

### Opción 2: Usar un servidor local (recomendado para mejor rendimiento)

**Con Python:**
```bash
# Python 3
cd 04-Xavi_se_va
python -m http.server 8000

# Luego abre en el navegador: http://localhost:8000
```

**Con Node.js (si tienes `http-server` instalado):**
```bash
cd 04-Xavi_se_va
npx http-server -p 8000

# Luego abre en el navegador: http://localhost:8000
```

**Con PHP:**
```bash
cd 04-Xavi_se_va
php -S localhost:8000

# Luego abre en el navegador: http://localhost:8000
```

## ⚙️ Configurar las fechas

Para cambiar las fechas, edita el archivo `index.html` y busca esta sección (alrededor de la línea 200):

```javascript
// Fecha de salida (último día de trabajo)
const targetDate = new Date(2025, 2, 31, 8, 0); // 31 de marzo de 2025 a las 8:00 AM

// Fecha de inicio (para calcular el progreso)
const startDate = new Date(2025, 0, 12, 0, 0); // 12 de enero de 2025
```

**Formato:** `new Date(año, mes-1, día, hora, minuto)`
- **Mes:** Los meses van de 0 a 11 (0 = enero, 2 = marzo, 11 = diciembre)
- **Ejemplo:** `new Date(2025, 2, 31, 8, 0)` = 31 de marzo de 2025 a las 8:00 AM

También puedes personalizar los mensajes buscando la sección `config`:
```javascript
const config = {
  mainTitle: "¡Me voy! 👋",
  subtitle: "Cuenta atrás para mi último día",
  farewellMessage: "¡Gracias por todo, compañeros! 💜"
};
```

## 🎨 Características

- ✅ Contador en tiempo real (se actualiza cada segundo)
- ✅ Barra de progreso visual que muestra el avance
- ✅ Slider con foto personalizable (arrastra una imagen o haz clic)
- ✅ Sistema de comentarios con almacenamiento local
- ✅ Animaciones de confeti y mensajes flotantes
- ✅ Diseño moderno y completamente responsive
- ✅ Decoraciones flotantes animadas
- ✅ Mensaje de celebración cuando llega el día
- ✅ Funciona sin conexión a internet (excepto para cargar Tailwind CSS)

## 📝 Funcionalidades adicionales

- **Comentarios:** Los mensajes se guardan en el navegador usando localStorage
- **Foto en el slider:** Haz clic en el icono 📸 o arrastra una imagen para personalizarlo
- **Animaciones:** Confeti y mensajes aparecen aleatoriamente
- **Responsive:** Se adapta perfectamente a móviles, tablets y escritorio

## 📁 Archivos

- `index.html` - Archivo principal (versión limpia y funcional)
- `canva-original-backup.html` - Backup del archivo original de Canva
- `README.md` - Este archivo con las instrucciones

## 🔧 Notas técnicas

- El contador se actualiza automáticamente cada segundo
- Si la fecha ya ha pasado, mostrará "🎉 ¡LIBERTAD! 🎉"
- Los comentarios se guardan localmente en el navegador (no se comparten entre dispositivos)
- La foto del slider se guarda solo en la sesión actual del navegador
