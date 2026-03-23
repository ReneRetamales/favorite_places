# 📍 Favorite Places

Una aplicación móvil multiplataforma desarrollada con **Flutter** para gestionar y guardar tus lugares favoritos. Permite agregar, visualizar y gestionar lugares con una interfaz moderna y responsiva.

## ✨ Características

- ✅ Agregar nuevos lugares favoritos
- ✅ Visualizar lista de lugares
- ✅ Tomar fotos con la cámara para lugares
- ✅ Interfaz moderna con tema oscuro
- 📱 Compatible con Android, iOS, Web, Windows, macOS y Linux
- ⚡ State management con Riverpod v2+
- 🎯 Tipografía personalizada con Google Fonts
- 📁 Almacenamiento local persistente (planificado)

## 📋 Requisitos Previos

- **Flutter SDK**: ^3.10.8
- **Dart**: 3.10.8 o superior
- **Android Studio** (para Android) o **Xcode** (para iOS)
- Git

## 🚀 Instalación

1. **Clonar el repositorio**

   ```bash
   git clone <url-del-repositorio>
   cd favorite_places
   ```

2. **Instalar dependencias**

   ```bash
   flutter pub get
   ```

3. **Ejecutar la aplicación**

   ```bash
   flutter run
   ```

4. **Compilar para producción**

   ```bash
   # Android
   flutter build apk

   # iOS
   flutter build ios

   # Web
   flutter build web
   ```

## 📁 Estructura del Proyecto

```
lib/
├── main.dart                 # Punto de entrada de la aplicación
├── models/
│   └── place.dart           # Modelo de datos para Place
├── providers/
│   └── user_places.dart     # Notifier con Riverpod para gestionar lugares
├── screens/
│   ├── places.dart          # Pantalla principal con lista de lugares
│   ├── add_place.dart       # Pantalla para agregar nuevos lugares
│   ├── place_detail.dart    # Pantalla de detalle del lugar
│   └── image_input.dart     # Widget para entrada de imágenes
└── widgets/
    ├── places_list.dart     # Widget lista de lugares
    └── image_input.dart     # Widget personalizado para imágenes
```

## 📦 Dependencias Principales

- **flutter_riverpod** (^3.2.1): Gestión de estado reactiva (Riverpod v2+)
- **image_picker** (^1.2.1): Selector de imágenes y acceso a cámara
- **google_fonts** (^7.0.0): Tipografía personalizada
- **uuid** (^4.5.3): Generación de IDs únicos
- **cupertino_icons** (^1.0.8): Iconos estilo iOS

## 🏗️ Arquitectura

### Models (`models/`)

Define las estructuras de datos de la aplicación, como el modelo `Place`.

### Providers (`providers/`)

Contiene la lógica de negocio y gestión de estado con Riverpod v2+. `UserPlacesNotifier` (basado en `Notifier`) gestiona la lista de lugares de forma reactiva.

**Nota:** El proyecto usa la sintaxis moderna de Riverpod v2+ con `Notifier` en lugar de la antigua `StateNotifier`.

### Screens (`screens/`)

Pantallas principales de la aplicación que construyen la UI.

### Widgets (`widgets/`)

Componentes reutilizables en diferentes pantallas.

## 🔐 Permisos Requeridos

### Android
- `CAMERA`: Para acceder a la cámara del dispositivo

### iOS
- `NSCameraUsageDescription`: Para acceder a la cámara
- `NSPhotoLibraryUsageDescription`: Para acceder a la galería de fotos

Los permisos están configurados automáticamente en los archivos de configuración:
- Android: `android/app/src/main/AndroidManifest.xml`
- iOS: `ios/Runner/Info.plist`

## 🎨 Tema y Estilos

La aplicación usa un tema oscuro personalizado con:

- Color seed: Púrpura (`#660AF7`)
- Tipografía: Ubuntu Condensed y Ubuntu
- Tema: Material 3

## 📝 Convenciones de Código

- **Nombrado en inglés**: Variables, funciones y clases
- **StatelessWidget/StatefulWidget**: Para componentes simples o con estado local
- **ConsumerWidget/ConsumerStatefulWidget**: Para acceso a providers
- **PascalCase**: Nombres de clases
- **camelCase**: Variables y funciones

## 🐛 Troubleshooting

Si encuentras problemas:

### Problemas Generales

1. **Limpiar cache**:

   ```bash
   flutter clean
   flutter pub get
   ```

2. **Actualizar dependencias**:

   ```bash
   flutter pub upgrade
   ```

3. **Revisar versión de Flutter**:
   ```bash
   flutter --version
   ```

### Problemas con la Cámara

**Android:**
- Asegúrate de que el permiso de cámara está habilitado en `AndroidManifest.xml`
- Ve a Configuración > Aplicaciones > Favorite Places > Permisos > Cámara y habilítalo
- En Android 6.0+ (Marshmallow), los permisos se solicitan en tiempo de ejecución

**iOS:**
- Verifica que la descripción de uso de cámara está en `Info.plist`
- Concede permisos cuando la app los solicite

### Problemas de Compilación

- **Error de Riverpod**: Asegúrate de usar Riverpod v2+ (`NotifierProvider`, no `StateNotifierProvider`)
- **Error de image_picker**: Ejecuta `flutter pub get` después de agregar la dependencia

## 📚 Recursos Útiles

- [Documentación Flutter](https://docs.flutter.dev/)
- [Riverpod Documentation](https://riverpod.dev/)
- [Google Fonts Flutter](https://pub.dev/packages/google_fonts)

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.

## 👤 Autor

Desarrollado como proyecto de aprendizaje en Flutter.
